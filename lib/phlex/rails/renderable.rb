# frozen_string_literal: true

module Phlex
	module Rails
		module Renderable
			def helpers
				@_view_context
			end

			def render(renderable, *args, **kwargs, &block)
				return super if renderable.is_a?(Phlex::HTML)
				return super if renderable.is_a?(Class) && renderable < Phlex::HTML

				@_target << @_view_context.render(renderable, *args, **kwargs, &block)

				nil
			end

			def render_in(view_context, &block)
				if block_given?
					call(view_context: view_context) do |*args|
						view_context.with_output_buffer(OutputBuffer.new(@_target)) do
							original_length = @_target.length
							output = yield(*args)
							unchanged = (original_length == @_target.length)

							if unchanged
								if output.is_a?(ActiveSupport::SafeBuffer)
									unsafe_raw(output)
								else
									text(output)
								end
							end
						end
					end.html_safe
				else
					call(view_context: view_context).html_safe
				end
			end
		end
	end
end
