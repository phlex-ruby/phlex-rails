# frozen_string_literal: true

module Phlex::Rails::Helpers::StylesheetPath
	extend Phlex::Rails::HelperMacros

	# @!method stylesheet_path(...)
	register_value_helper :stylesheet_path
end

module Phlex::Rails::Helpers::StyleSheetPath
	include Phlex::Rails::Helpers::StyleSheetPath

	def self.included(_)
		warn "[DEPRECATION] Phlex::Rails::Helpers::StyleSheetPath is deprecated. Please use Phlex::Rails::Helpers::StylesheetPath instead."
	end
end
