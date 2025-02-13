# frozen_string_literal: true

module Phlex::Rails::Helpers::EmailFieldTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-email_field_tag)
	register_output_helper def email_field_tag(...) = nil
end
