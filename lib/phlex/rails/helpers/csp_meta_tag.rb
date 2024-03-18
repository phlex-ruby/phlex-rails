# frozen_string_literal: true

module Phlex::Rails::Helpers::CSPMetaTag
	extend Phlex::Rails::HelperMacros

	# @!method csp_meta_tag(...)
	# 	@return [nil]
	register_output_helper :csp_meta_tag
end
