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
				output_buffer = view_context.output_buffer

				# Since https://github.com/rails/rails/pull/45731
				if output_buffer.respond_to?(:raw_buffer)
					buffer = output_buffer.raw_buffer
				else
					buffer = Buffer.new(output_buffer)
				end

				call(buffer, view_context: view_context, &block)

				nil
			end
		end
	end
end
