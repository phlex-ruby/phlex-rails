# frozen_string_literal: true

module Phlex::Rails::Helpers::CollectionCheckBoxes
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormOptionsHelper.html#method-i-collection_check_boxes)
	register_builder_yielding_helper def collection_check_boxes(...) = nil, Phlex::Rails::BufferedCheckboxBuilder
end
