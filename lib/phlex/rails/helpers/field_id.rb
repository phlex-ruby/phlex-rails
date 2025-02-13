# frozen_string_literal: true

module Phlex::Rails::Helpers::FieldID
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-field_id)
	register_value_helper def field_id(...) = nil
end
