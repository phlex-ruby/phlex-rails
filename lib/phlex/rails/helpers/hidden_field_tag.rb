# frozen_string_literal: true

module Phlex::Rails::Helpers::HiddenFieldTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-hidden_field_tag)
	register_output_helper def hidden_field_tag(...) = nil
end
