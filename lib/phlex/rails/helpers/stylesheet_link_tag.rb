# frozen_string_literal: true

module Phlex::Rails::Helpers::StylesheetLinkTag
	extend Phlex::Rails::HelperMacros

	# @!method stylesheet_link_tag(...)
	# 	@return [nil]
	register_output_helper :stylesheet_link_tag
end
