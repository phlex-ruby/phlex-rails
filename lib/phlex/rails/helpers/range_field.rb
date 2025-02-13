# frozen_string_literal: true

module Phlex::Rails::Helpers::RangeField
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-range_field)
	register_output_helper def range_field(...) = nil
end
