# frozen_string_literal: true

module Phlex::Rails::Helpers::CollectionCheckBoxes
	extend Phlex::Rails::HelperMacros

	# @!method collection_check_boxes(...)
	# 	@yield [builder]
	# 	@yieldparam builder [Phlex::Rails::BufferedCheckboxBuilder]
	define_builder_yielding_helper :collection_check_boxes, Phlex::Rails::BufferedCheckboxBuilder
end

module Phlex::Rails::Helpers::CollectionCheckboxes
	include Phlex::Rails::Helpers::CollectionCheckBoxes

	def self.included(_)
		warn "[DEPRECATION] Phlex::Rails::Helpers::CollectionCheckboxes is deprecated. Please use Phlex::Rails::Helpers::CollectionCheckBoxes instead."
	end
end
