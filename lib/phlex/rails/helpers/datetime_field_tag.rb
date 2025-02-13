# frozen_string_literal: true

module Phlex::Rails::Helpers::DatetimeFieldTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-datetime_field_tag)
	register_output_helper def datetime_field_tag(...) = nil
end
