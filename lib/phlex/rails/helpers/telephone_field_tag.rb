# frozen_string_literal: true

module Phlex::Rails::Helpers::TelephoneFieldTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-telephone_field_tag)
	register_output_helper def telephone_field_tag(...) = nil
end
