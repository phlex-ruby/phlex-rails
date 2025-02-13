# frozen_string_literal: true

module Phlex::Rails::Helpers::TimeField
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-time_field)
	register_output_helper def time_field(...) = nil
end
