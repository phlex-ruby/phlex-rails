# frozen_string_literal: true

class Phlex::Rails::Decorator < BasicObject
	def self.output(method_name)
		class_eval(<<~RUBY, __FILE__, __LINE__ + 1)
			def #{method_name}(...)
				@component.raw(
					@object.#{method_name}(...)
				)
			end
		RUBY
	end

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
