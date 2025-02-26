# frozen_string_literal: true

class Phlex::Rails::RadioButtonBuilder < Buffered
	def text(...) = @object.text(...)
	def value(...) = @object.value(...)
	def object(...) = @object.object(...)

	output def label(...) = nil
	output def radio_button(...) = nil
end
