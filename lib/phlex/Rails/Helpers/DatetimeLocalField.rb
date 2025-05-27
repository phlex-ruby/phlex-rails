# frozen_string_literal: true

module Phlex::Rails::Helpers::DatetimeLocalField
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-datetime_local_field)
	register_output_helper def datetime_local_field(...) = nil
end
