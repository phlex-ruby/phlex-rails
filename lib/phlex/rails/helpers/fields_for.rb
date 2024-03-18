# frozen_string_literal: true

module Phlex::Rails::Helpers::FieldsFor
	extend Phlex::Rails::HelperMacros

	# @!method fields_for(...)
	# 	@yield [builder]
	# 	@yieldparam builder [Phlex::Rails::BufferedFormBuilder]
	register_builder_yielding_helper :fields_for, Phlex::Rails::BufferedFormBuilder
end
