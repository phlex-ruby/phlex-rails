# frozen_string_literal: true

module Phlex::Rails::Helpers::PasswordField
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-password_field)
	register_output_helper def password_field(...) = nil
end
