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
				def helpers
					if defined?(ViewComponent::Base) && ViewComponent::Base === @_view_context
						@_view_context.helpers
					else
						@_view_context
					end
				end

				def render(*args, **kwargs, &block)
					renderable = args[0]

					case renderable
					when Phlex::SGML, Proc, Method
						return super
					when Class
						return super if renderable < Phlex::SGML
					when Enumerable
						return super unless ActiveRecord::Relation === renderable
					else
						if block
							@_context.target << @_view_context.render(*args, **kwargs) do |*yielded_args|
								if yielded_args.length == 1 && defined?(ViewComponent::Base) && ViewComponent::Base === yielded_args[0]
									capture(Phlex::Rails::Buffered.new(yielded_args[0], view: self), &block)
								else
									capture(*yielded_args, &block)
								end
							end
						else
							@_context.target << @_view_context.render(*args, **kwargs)
						end
					end

					nil
				end

				def render_in(view_context, &block)
					fragments = if view_context.request && (fragment_header = view_context.request.headers["X-Fragment"])
						fragment_header.split
					end

					if block_given?
						call(view_context: view_context, fragments: fragments) do |*args|
							original_length = @_context.target.bytesize

							if args.length == 1 && Phlex::SGML === args[0] && !block.source_location&.[](0)&.end_with?(".rb")
								output = view_context.capture(
									Phlex::Rails::Unbuffered.new(args[0]),
									&block
								)
							else
								output = view_context.capture(*args, &block)
							end

							unchanged = (original_length == @_context.target.bytesize)

							if unchanged
								case output
								when ActiveSupport::SafeBuffer
									@_context.target << output
								end
							end
						end.html_safe
					else
						call(view_context: view_context, fragments: fragments).html_safe
					end
				end

				def capture(...)
					super&.html_safe
				end

				# @api private
				def __text__(content)
					case content
					when ActiveSupport::SafeBuffer
						@_context.target << content
					else
						super
					end
				end

				# TODO: Re-introduce this when we can figure out how to test it
				# def await(task)
				# 	case task
				# 	when ActiveRecord::Relation
				# 		future = task.instance_variable_get(:@future_result)
				# 		flush if future && future.pending?
				# 		task
				# 	else
				# 		super
				# 	end
				# end

				# Trick ViewComponent into thinking we're a ViewComponent to fix rendering output
				# @api private
				def set_original_view_context(view_context)
				end
			end
		end
	end
end
