# frozen_string_literal: true

module Phlex::Rails::Helpers::CheckBoxTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-check_box_tag)
	register_output_helper def check_box_tag(...) = nil
end
