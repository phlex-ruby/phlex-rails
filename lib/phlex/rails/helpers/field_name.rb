# frozen_string_literal: true

module Phlex::Rails::Helpers::FieldName
	extend Phlex::Rails::HelperMacros

	# @!method field_name(...)
	register_value_helper :field_name
end
