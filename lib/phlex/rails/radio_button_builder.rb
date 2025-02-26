# frozen_string_literal: true

class Phlex::Rails::RadioButtonBuilder < Buffered
	def label(...)
		@component.__raw_unless_external_block__(
			@object.label(...)
		)
	end

	def object(...)
		@object.object(...)
	end

	def radio_button(...)
		@component.__raw_unless_external_block__(
			@object.radio_button(...)
		)
	end

	def text(...)
		@object.text(...)
	end

	def value(...)
		@object.value(...)
	end
end
