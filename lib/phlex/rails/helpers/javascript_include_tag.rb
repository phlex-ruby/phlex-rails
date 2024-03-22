# frozen_string_literal: true

module Phlex::Rails::Helpers::JavascriptIncludeTag
	extend Phlex::Rails::HelperMacros

	# @!method javascript_include_tag(...)
	# 	@return [nil]
	register_output_helper :javascript_include_tag
end

module Phlex::Rails::Helpers::JavaScriptIncludeTag
	include Phlex::Rails::Helpers::JavascriptIncludeTag

	def self.included(_)
		warn "[DEPRECATION] Phlex::Rails::Helpers::JavaScriptIncludeTag is deprecated. Please use Phlex::Rails::Helpers::JavascriptIncludeTag instead."
	end
end
