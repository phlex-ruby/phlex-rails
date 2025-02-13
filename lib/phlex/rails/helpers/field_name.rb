# frozen_string_literal: true

module Phlex::Rails::Helpers::FieldName
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-field_name)
	register_value_helper def field_name(...) = nil
end
