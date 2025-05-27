# frozen_string_literal: true

module Phlex::Rails::Helpers::TextFieldTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-text_field_tag)
	register_output_helper def text_field_tag(...) = nil
end
