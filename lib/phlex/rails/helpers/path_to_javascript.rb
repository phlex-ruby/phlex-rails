# frozen_string_literal: true

module Phlex::Rails::Helpers::PathToJavascript
	extend Phlex::Rails::HelperMacros

	# @!method path_to_javascript(...)
	define_value_helper :path_to_javascript
end

module Phlex::Rails::Helpers::PathToJavaScript
	include Phlex::Rails::Helpers::PathToJavascript

	def self.included(_)
		warn "[DEPRECATION] Phlex::Rails::Helpers::PathToJavaScript is deprecated. Please use Phlex::Rails::Helpers::PathToJavascript instead."
	end
end
