# frozen_string_literal: true

module Phlex::Rails::Helpers::CollectionCheckBoxes
	extend Phlex::Rails::HelperMacros

	register_builder_yielding_helper def collection_check_boxes(...) = nil, Phlex::Rails::BufferedCheckboxBuilder
end
