# frozen_string_literal: true

module Phlex::Rails::Helpers::JavascriptPath
	extend Phlex::Rails::HelperMacros

	# @!method javascript_path(...)
	define_value_helper :javascript_path
end

module Phlex::Rails::Helpers::JavaScriptPath
	include Phlex::Rails::Helpers::JavascriptPath

	def self.included(_)
		warn "[DEPRECATION] Phlex::Rails::Helpers::JavaScriptPath is deprecated. Please use Phlex::Rails::Helpers::JavascriptPath instead."
	end
end
