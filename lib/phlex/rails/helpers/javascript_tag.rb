# frozen_string_literal: true

module Phlex::Rails::Helpers::JavascriptTag
	extend Phlex::Rails::HelperMacros

	# @!method javascript_tag(...)
	# 	@return [nil]
	register_output_helper :javascript_tag
end
