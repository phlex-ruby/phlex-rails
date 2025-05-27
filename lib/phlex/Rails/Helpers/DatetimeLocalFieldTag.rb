# frozen_string_literal: true

module Phlex::Rails::Helpers::DatetimeLocalFieldTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-datetime_local_field_tag)
	register_output_helper def datetime_local_field_tag(...) = nil
end
