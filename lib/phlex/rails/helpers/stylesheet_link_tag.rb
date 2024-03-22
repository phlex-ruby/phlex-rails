# frozen_string_literal: true

module Phlex::Rails::Helpers::StylesheetLinkTag
	extend Phlex::Rails::HelperMacros

	# @!method stylesheet_link_tag(...)
	# 	@return [nil]
	register_output_helper :stylesheet_link_tag
end

module Phlex::Rails::Helpers::StyleSheetLinkTag
	include Phlex::Rails::Helpers::StylesheetLinkTag

	def self.included(_)
		warn "[DEPRECATION] Phlex::Rails::Helpers::StyleSheetLinkTag is deprecated. Please use Phlex::Rails::Helpers::StylesheetLinkTag instead."
	end
end
