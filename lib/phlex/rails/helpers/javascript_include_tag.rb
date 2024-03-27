# frozen_string_literal: true

module Phlex::Rails::Helpers::JavascriptIncludeTag
	extend Phlex::Rails::HelperMacros

	# @!method javascript_include_tag(...)
	# 	@return [nil]
	register_output_helper :javascript_include_tag
end
