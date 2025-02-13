# frozen_string_literal: true

module Phlex::Rails::Helpers::TimeFieldTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-time_field_tag)
	register_output_helper def time_field_tag(...) = nil
end
