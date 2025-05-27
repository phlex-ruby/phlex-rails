# frozen_string_literal: true

module Phlex::Rails::Helpers::RangeFieldTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-range_field_tag)
	register_output_helper def range_field_tag(...) = nil
end
