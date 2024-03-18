# frozen_string_literal: true

module Phlex::Rails::Helpers::CollectionSelect
	extend Phlex::Rails::HelperMacros

	# @!method collection_select(...)
	# 	@return [nil]
	register_output_helper :collection_select
end
