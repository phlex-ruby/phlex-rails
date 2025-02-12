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
							@view.capture do
								yield(
									::#{builder.name}.new(builder,
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
						@view.instance_variable_get(:@_state).buffer << output
					end

					nil
				end
			RUBY
		end

		def initialize(object, view:)
			@object = object
			@view = view
		end

		def respond_to_missing?(...)
			@object.respond_to?(...)
		end

		def method_missing(*, **, &block)
			output = if block
				@object.public_send(*, **) { |*a| @view.capture(*a, &block) }
			else
				@object.public_send(*, **)
			end

			if ::ActiveSupport::SafeBuffer === output
				@view.instance_variable_get(:@_state).buffer << output
			end

			nil
		end
	end
end
