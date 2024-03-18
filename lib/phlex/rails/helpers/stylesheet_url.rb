# frozen_string_literal: true

module Phlex::Rails::Helpers::StylesheetURL
	extend Phlex::Rails::HelperMacros

	# @!method stylesheet_url(...)
	register_value_helper :stylesheet_url
end

module Phlex::Rails::Helpers::StyleSheetURL
	include Phlex::Rails::Helpers::StylesheetURL

	def self.included(_)
		warn "[DEPRECATION] Phlex::Rails::Helpers::StyleSheetURL is deprecated. Please use Phlex::Rails::Helpers::StylesheetURL instead."
	end
end
