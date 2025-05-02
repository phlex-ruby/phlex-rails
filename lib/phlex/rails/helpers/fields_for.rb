# frozen_string_literal: true

module Phlex::Rails::Helpers::FieldsFor
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-fields_for)
	register_builder_yielding_helper def fields_for(...) = nil
end
