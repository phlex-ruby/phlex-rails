# frozen_string_literal: true

class Phlex::Rails::Builder < BasicObject
	def initialize(object, component:)
		@object = object
		@component = component
	end

	define_method :send, ::Kernel.instance_method(:send)
	define_method :class, ::Kernel.instance_method(:class)
	define_method :is_a?, ::Kernel.instance_method(:is_a?)

	def inspect
		"Phlex::Rails::Builder(#{@object.inspect})"
	end

	def unwrap
		@object
	end

	def respond_to_missing?(method_name, include_private = false)
		@object.respond_to?(method_name, include_private)
	end

	def method_missing(*, **, &block)
		output = if block
			@object.public_send(*, **) do |builder|
				yield ::Phlex::Rails::Builder.new(builder, component: @component)
			end
		else
			@object.public_send(*, **)
		end

		case output
		when ::ActiveSupport::SafeBuffer
			@component.raw(output)
		else
			output
		end
	end
end
