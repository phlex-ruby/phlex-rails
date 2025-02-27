# frozen_string_literal: true

class Phlex::Rails::CheckboxBuilder < Phlex::Rails::Decorator
	def text(...) = @object.text(...)
	def value(...) = @object.value(...)
	def object(...) = @object.object(...)

	output def label(...) = nil
	output def checkbox(...) = nil
end
