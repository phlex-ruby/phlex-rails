# frozen_string_literal: true

module Phlex::Rails::Helpers::JavascriptImportmapTags
	extend Phlex::Rails::HelperMacros

	# @!method javascript_importmap_tags(...)
	# 	@return [nil]
	register_output_helper :javascript_importmap_tags
end

module Phlex::Rails::Helpers::JavaScriptImportMapTags
	include Phlex::Rails::Helpers::JavascriptImportmapTags

	def self.included(_)
		warn "[DEPRECATION] Phlex::Rails::Helpers::JavaScriptImportMapTags is deprecated. Please use Phlex::Rails::Helpers::JavascriptImportmapTags instead."
	end
end
