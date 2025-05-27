# frozen_string_literal: true

module Phlex::Rails::Helpers::TelephoneField
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-telephone_field)
	register_output_helper def telephone_field(...) = nil
end
