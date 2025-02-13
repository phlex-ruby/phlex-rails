# frozen_string_literal: true

module Phlex::Rails::Helpers::GroupedCollectionSelect
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormOptionsHelper.html#method-i-grouped_collection_select)
	register_output_helper def grouped_collection_select(...) = nil
end
