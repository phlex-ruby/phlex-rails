# frozen_string_literal: true

module Phlex
	module Rails
		module SGML
			module Overrides
        def self.prepended(klass)
          klass.alias_method :super_render, :render
          klass.include RenderMethods
          klass.extend ClassMethods
          # Set the version to 1 by default.
          klass.version 1
        end

        module RenderMethods
          def render_1(*args, **kwargs, &block)
            renderable = args[0]

            warn "Phlex 2.0 will render #{renderable} using render_2" if renderable.is_a?(String)

            case renderable
            when Phlex::SGML, Proc
              return super_render(*args, **kwargs, &block)
            when Class
              return super_render(*args, **kwargs, &block) if renderable < Phlex::SGML
            when Enumerable
              return super_render(*args, **kwargs, &block) unless renderable.is_a?(ActiveRecord::Relation)
            else
              captured_block = -> { capture(&block) } if block
              @_context.target << @_view_context.render(*args, **kwargs, &captured_block)
            end

            nil
          end

          def render_2(*args, **kwargs, &block)
            renderable = args[0]

            case renderable
            when Phlex::SGML, Proc, String
              return super_render(*args, **kwargs, &block)
            when Class
              return super_render(*args, **kwargs, &block) if renderable < Phlex::SGML
            when Enumerable
              return super_render(*args, **kwargs, &block) unless renderable.is_a?(ActiveRecord::Relation)
            else
              captured_block = -> { capture(&block) } if block
              @_context.target << @_view_context.render(*args, **kwargs, &captured_block)
            end

            nil
          end
        end

        module ClassMethods
          # Class method to switch render method implementations
          def version(version)
            case version
            when 1
              alias_method :render, :render_1
            when 2
              alias_method :render, :render_2
            else
              raise ArgumentError, "Unknown render method version: #{version}"
            end
          end
        end

				def helpers
					if defined?(ViewComponent::Base) && @_view_context.is_a?(ViewComponent::Base)
						@_view_context.helpers
					else
						@_view_context
					end
				end

				def render_in(view_context, &block)
					if block_given?
						call(view_context: view_context) do |*args|
							original_length = @_context.target.length

							if args.length == 1 && Phlex::SGML === args[0] && !block.source_location&.[](0)&.end_with?(".rb")
								output = view_context.capture(
									args[0].unbuffered, &block
								)
							else
								output = view_context.capture(*args, &block)
							end

							unchanged = (original_length == @_context.target.length)

							if unchanged
								case output
								when ActiveSupport::SafeBuffer
									@_context.target << output
								end
							end
						end.html_safe
					else
						call(view_context: view_context).html_safe
					end
				end

				def capture
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

				# @api private
				def await(task)
					if task.is_a?(ActiveRecord::Relation)
						flush unless task.loaded?

						task
					else
						super
					end
				end

				# Trick ViewComponent into thinking we're a ViewComponent to fix rendering output
				# @api private
				def set_original_view_context(view_context)
				end
			end
		end
	end
end
