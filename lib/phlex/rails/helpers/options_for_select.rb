# frozen_string_literal: true

module Phlex::Rails::Helpers::OptionsForSelect
	Never = Object.new

	extend Phlex::Rails::HelperMacros

	def options_for_select(...)
		context = @_context
		return if context.fragments && !context.in_target_fragment

		raw helpers.options_for_select(...)

		Never
	end
end
