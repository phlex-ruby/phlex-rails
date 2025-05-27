# frozen_string_literal: true

module Phlex::Rails::Helpers::PasswordFieldTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-password_field_tag)
	register_output_helper def password_field_tag(...) = nil
end
