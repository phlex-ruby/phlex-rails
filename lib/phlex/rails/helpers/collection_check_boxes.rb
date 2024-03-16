# frozen_string_literal: true

module Phlex::Rails::Helpers::CollectionCheckBoxes
	extend Phlex::Rails::HelperMacros

	# @!method collection_check_boxes(...)
	# 	@yield [builder]
	# 	@yieldparam builder [Phlex::Rails::BufferedCheckboxBuilder]
	define_builder_yielding_helper :collection_check_boxes, Phlex::Rails::BufferedCheckboxBuilder
end
