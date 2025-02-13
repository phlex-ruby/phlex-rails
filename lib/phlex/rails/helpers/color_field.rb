# frozen_string_literal: true

module Phlex::Rails::Helpers::ColorField
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-color_field)
	register_output_helper def color_field(...) = nil
end
