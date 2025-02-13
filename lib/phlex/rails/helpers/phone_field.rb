# frozen_string_literal: true

module Phlex::Rails::Helpers::PhoneField
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-phone_field)
	register_output_helper def phone_field(...) = nil
end
