# frozen_string_literal: true

module Phlex::Rails::Helpers::NumberFieldTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-number_field_tag)
	register_output_helper def number_field_tag(...) = nil
end
