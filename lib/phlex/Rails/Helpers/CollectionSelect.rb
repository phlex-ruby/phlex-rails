# frozen_string_literal: true

module Phlex::Rails::Helpers::CollectionSelect
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormOptionsHelper.html#method-i-collection_select)
	register_output_helper def collection_select(...) = nil
end
