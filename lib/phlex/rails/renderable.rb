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
						view_context.with_output_buffer(self) do
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

			def safe_append=(value)
				return unless value

				@_target << case value
					when String then value
					when Symbol then value.name
					else value.to_s
				end
			end

			def append=(value)
				return unless value

				if value.html_safe?
					self.safe_append = value
				else
					@_target << case value
						when String then ERB::Util.html_escape(value)
						when Symbol then ERB::Util.html_escape(value.name)
						else ERB::Util.html_escape(value.to_s)
					end
				end
			end

			def capture
				super&.html_safe
			end

			# Trick ViewComponent into thinking we're a ViewComponent to fix rendering output
			def set_original_view_context(view_context)
			end

			private def yield_content(&block)
				if block&.binding&.receiver == self
					super
				else
					@_view_context.with_output_buffer(self) { super }
				end
			end

			private def yield_content_with_args(*args, &block)
				if block&.binding&.receiver == self
					super
				else
					@_view_context.with_output_buffer(self) { super }
				end
			end
		end
	end
end
