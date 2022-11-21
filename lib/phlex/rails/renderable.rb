# frozen_string_literal: true

module Phlex
	module Rails
		module Renderable
			def helpers
				@_view_context
			end

			def render(renderable, *args, **kwargs, &block)
				super if renderable.is_a?(Phlex::HTML)
				super if renderable.is_a?(Class) && renderable < Phlex::HTML

				@_target << @_view_context.render(renderable, *args, **kwargs, &block)
			end

			def render_in(view_context, &block)
				buffer = Buffer.new(view_context.output_buffer)
				call(buffer, view_context: view_context, &block)
				nil
			end
		end
	end
end
