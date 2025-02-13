# frozen_string_literal: true

module Phlex::Rails::Helpers::PhoneFieldTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-phone_field_tag)
	register_output_helper def phone_field_tag(...) = nil
end
