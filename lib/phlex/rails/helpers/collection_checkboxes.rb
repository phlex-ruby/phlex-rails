# frozen_string_literal: true

module Phlex::Rails::Helpers::CollectionCheckboxes
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormOptionsHelper.html#method-i-collection_checkboxes)
	register_builder_yielding_helper def collection_checkboxes(...) = nil
end
