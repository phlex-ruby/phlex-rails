# frozen_string_literal: true

module Phlex
	module Rails
		module SGML
			module ClassMethods
				def render_in(...)
					new.render_in(...)
				end
			end

			module Overrides
				class HelpersCalledBeforeRenderError < StandardError; end

				def helpers
					view_context = @_context.view_context
          raise HelpersCalledBeforeRenderError.new("Do not use rails helpers until after the view has been rendered.") unless view_context

					if defined?(ViewComponent::Base) && ViewComponent::Base === view_context
						view_context.helpers
					else
						view_context
					end
				end

				def render(*args, **kwargs, &block)
					renderable = args[0]

					case renderable
						when Phlex::SGML, Proc, Method, String
							return super
						when Class
							return super if renderable < Phlex::SGML
						when Enumerable
							return super unless ActiveRecord::Relation === renderable
						when nil
							partial = kwargs.delete(:partial)

						if partial # this is a hack to get around https://github.com/rails/rails/issues/51015
							return raw(
								@_context.view_context.render(partial, **kwargs) do |*yielded_args|
									capture(*yielded_args, &block)
								end,
							)
						end
					end

					output = if block
						@_context.view_context.render(*args, **kwargs) do |*yielded_args|
							if yielded_args.length == 1 && defined?(ViewComponent::Base) && ViewComponent::Base === yielded_args[0]
								capture(Phlex::Rails::Buffered.new(yielded_args[0], view: self), &block)
							else
								capture(*yielded_args, &block)
							end
						end
					else
						@_context.view_context.render(*args, **kwargs)
					end

					raw(output)
				end

				def render_in(view_context, &erb)
					fragments = if view_context.request && (fragment_header = view_context.request.headers["X-Fragment"])
						fragment_header.split
					end

					if erb
						call(view_context:, fragments:) { |*args|
							if args.length == 1 && Phlex::SGML === args[0] && !erb.source_location&.[](0)&.end_with?(".rb")
								unbuffered = Phlex::Rails::Unbuffered.new(args[0])
								raw(helpers.capture(unbuffered, &erb))
							else
								raw(helpers.capture(*args, &erb))
							end
						}.html_safe
					else
						call(view_context:, fragments:).html_safe
					end
				end

				def capture(...)
					super&.html_safe
				end

				# Trick ViewComponent into thinking we're a ViewComponent to fix rendering output
				# @api private
				def set_original_view_context(view_context)
				end
			end
		end
	end
end
