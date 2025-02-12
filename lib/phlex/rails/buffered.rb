# frozen_string_literal: true

require "forwardable"

module Phlex::Rails
	class Buffered < BasicObject
		extend ::Forwardable

		def self.define_builder_yielding_method(method_name, builder)
			class_eval(<<-RUBY, __FILE__, __LINE__ + 1)
				# frozen_string_literal: true

				def #{method_name}(*args, **kwargs, &block)
					output = if block
						@object.#{method_name}(*args, **kwargs) { |builder|
							@component.capture do
								yield(
									::#{builder.name}.new(builder,
										component: @component
									)
								)
							end
						}
					else
						@object.#{method_name}(*args, **kwargs)
					end

					case output
					when ::ActiveSupport::SafeBuffer
						@component.raw(output)
					end

					nil
				end
			RUBY
		end

		def initialize(object, component:)
			@object = object
			@component = component
		end

		def respond_to_missing?(...)
			@object.respond_to?(...)
		end

		def method_missing(*, **, &block)
			output = if block
				@object.public_send(*, **) { |*a| @component.capture(*a, &block) }
			else
				@object.public_send(*, **)
			end

			case output
			when ::ActiveSupport::SafeBuffer
				@component.raw(output)
			end

			nil
		end
	end
end
