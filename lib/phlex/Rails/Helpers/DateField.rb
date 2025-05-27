# frozen_string_literal: true

module Phlex::Rails::Helpers::DateField
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-date_field)
	register_output_helper def date_field(...) = nil
end
