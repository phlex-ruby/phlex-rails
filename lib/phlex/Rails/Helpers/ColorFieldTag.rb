# frozen_string_literal: true

module Phlex::Rails::Helpers::ColorFieldTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-color_field_tag)
	register_output_helper def color_field_tag(...) = nil
end
