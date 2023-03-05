# frozen_string_literal: true

module Phlex
	module Rails
		module SGML
			module Overrides
				def helpers
					if defined?(ViewComponent::Base) && @_view_context.is_a?(ViewComponent::Base)
						@_view_context.helpers
					else
						@_view_context
					end
				end

				def render(*args, **kwargs, &block)
					renderable = args[0]
					
					return super if renderable.is_a?(Phlex::SGML)
					return super if renderable.is_a?(Class) && renderable < Phlex::SGML

					@_target << @_view_context.render(*args, **kwargs, &block)

					nil
				end

				def render_in(view_context, &block)
					if block_given?
						call(view_context: view_context) do |*args|
							original_length = @_target.length

							if args.length == 1 && Phlex::SGML === args[0]
								output = view_context.capture(
									args[0].unbuffered, &block
								)
							else
								output = view_context.capture(*args, &block)
							end

							if (original_length == @_target.length) && output.is_a?(ActiveSupport::SafeBuffer)
								@_target << output
							end
						end.html_safe
					else
						call(view_context: view_context).html_safe
					end
				end

				def capture
					super&.html_safe
				end

				def plain(content)
					case content
					when ActiveSupport::SafeBuffer
						@_target << content
					else
						super
					end
				end

				# Trick ViewComponent into thinking we're a ViewComponent to fix rendering output
				def set_original_view_context(view_context)
				end
			end
		end
	end
end
