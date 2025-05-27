# frozen_string_literal: true

module Phlex::Rails::Helpers::CheckboxTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-checkbox_tag)
	register_output_helper def checkbox_tag(...) = nil
end
