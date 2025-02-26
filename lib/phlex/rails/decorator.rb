# frozen_string_literal: true

class Phlex::Rails::Decorator < BasicObject
	def initialize(object, component:)
		@object = object
		@component = component
	end

	def respond_to_missing?(method_name, include_private = false)
		@object.respond_to?(method_name, include_private)
	end

	def method_missing(...)
		@object.public_send(...)
	end
end
