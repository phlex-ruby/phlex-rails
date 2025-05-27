# frozen_string_literal: true

module Phlex::Rails::Helpers::RadioButtonTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-radio_button_tag)
	register_output_helper def radio_button_tag(...) = nil
end
