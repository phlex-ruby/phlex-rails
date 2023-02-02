# frozen_string_literal: true

require "forwardable"

module Phlex::Rails
	# A decorator that buffers all method calls and captures the blocks passed to them.
	class Buffered < BasicObject
		extend ::Forwardable

		# @api private
		def self.define_builder_yielding_method(method_name, builder)
			class_eval(<<-RUBY, __FILE__, __LINE__ + 1)
				# frozen_string_literal: true

				def #{method_name}
					output = if block_given?
						@object.#{method_name}(*args, **kwargs) { |builder|
							@view.capture do
								yield(
									::#{builder.name}.new(builder,
										buffer: @buffer,
										view: @view
									)
								)
							end
						}
					else
						@object.#{method_name}(*args, **kwargs)
					end

					case output
					when ::ActiveSupport::SafeBuffer
						@buffer << output
					end

					nil
				end
			RUBY
		end

		# @api private
		def initialize(object, buffer:, view:)
			@object = object
			@buffer = buffer
			@view = view
		end

		def respond_to_missing?(...)
			@object.respond_to?(...)
		end

		def method_missing(*args, **kwargs, &block)
			output = if block
				@object.public_send(*args, **kwargs) { @view.capture(&block) }
			else
				@object.public_send(*args, **kwargs)
			end

			case output
			when ::ActiveSupport::SafeBuffer
				@buffer << output
			end

			nil
		end
	end
end
