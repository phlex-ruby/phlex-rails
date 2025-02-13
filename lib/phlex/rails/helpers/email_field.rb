# frozen_string_literal: true

module Phlex::Rails::Helpers::EmailField
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-email_field)
	register_output_helper def email_field(...) = nil
end
