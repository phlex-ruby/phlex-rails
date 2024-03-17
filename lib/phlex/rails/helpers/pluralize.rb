# frozen_string_literal: true

module Phlex::Rails::Helpers::Pluralize
	extend Phlex::Rails::HelperMacros

	# @!method pluralize(...)
	# 	@return [String]
	define_value_helper :pluralize
end
