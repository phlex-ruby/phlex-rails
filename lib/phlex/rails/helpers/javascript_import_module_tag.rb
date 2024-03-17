# frozen_string_literal: true

module Phlex::Rails::Helpers::JavascriptImportModuleTag
	extend Phlex::Rails::HelperMacros

	# @!method javascript_import_module_tag(...)
	# 	@return [nil]
	define_output_helper :javascript_import_module_tag
end

module Phlex::Rails::Helpers::JavaScriptImportModuleTag
	include Phlex::Rails::Helpers::JavascriptImportModuleTag

	def self.included(_)
		warn "[DEPRECATION] Phlex::Rails::Helpers::JavaScriptImportModuleTag is deprecated. Please use Phlex::Rails::Helpers::JavascriptImportModuleTag instead."
	end
end
