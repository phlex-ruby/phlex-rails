# frozen_string_literal: true

module Phlex::Rails::Helpers::DatetimeField
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-datetime_field)
	register_output_helper def datetime_field(...) = nil
end
