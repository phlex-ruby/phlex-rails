# frozen_string_literal: true

module Phlex::Rails::Helpers::ButtonTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-button_tag)
	register_output_helper def button_tag(...) = nil
end
