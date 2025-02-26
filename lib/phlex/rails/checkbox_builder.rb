# frozen_string_literal: true

class Phlex::Rails::CheckboxBuilder < Phlex::Rails::Decorator
	def label(...)
		@component.__raw_unless_external_block__(
			@object.label(...)
		)
	end

	def object(...)
		@object.object(...)
	end

	def checkbox(...)
		@component.__raw_unless_external_block__(
			@object.checkbox(...)
		)
	end

	def text(...)
		@object.text(...)
	end

	def value(...)
		@object.value(...)
	end
end
