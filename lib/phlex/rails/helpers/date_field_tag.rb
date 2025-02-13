# frozen_string_literal: true

module Phlex::Rails::Helpers::DateFieldTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-date_field_tag)
	register_output_helper def date_field_tag(...) = nil
end
