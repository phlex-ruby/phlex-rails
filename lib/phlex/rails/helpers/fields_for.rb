# frozen_string_literal: true

module Phlex::Rails::Helpers::FieldsFor
	extend Phlex::Rails::HelperMacros

	register_builder_yielding_helper def fields_for(...) = nil, Phlex::Rails::BufferedFormBuilder
end
