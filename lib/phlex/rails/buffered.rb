# frozen_string_literal: true

module Phlex::Rails
	def Buffered(type)
		-> (value) { Phlex::Rails::Buffered === value && type === value.unwrap }
	end

	class Buffered < BasicObject
		def initialize(object, component:)
			@object = object
			@component = component
		end

		define_method :send, ::Kernel.instance_method(:send)
		define_method :class, ::Kernel.instance_method(:class)
		define_method :is_a?, ::Kernel.instance_method(:is_a?)

		def inspect
			"Phlex::Rails::Buffered(#{@object.inspect})"
		end

		def unwrap
			@object
		end

		def respond_to_missing?(...)
			@object.respond_to?(...)
		end

		def method_missing(*, **, &block)
			if block
				@component.raw(
					@object.public_send(*, **) { |*a| @component.capture(*a, &block) }
				)
			else
				@component.raw(
					@object.public_send(*, **)
				)
			end
		end
	end
end
