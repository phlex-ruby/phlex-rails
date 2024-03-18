# frozen_string_literal: true

module Phlex::Rails::Helpers::URLToJavascript
	extend Phlex::Rails::HelperMacros

	# @!method url_to_javascript(...)
	register_value_helper :url_to_javascript
end

module Phlex::Rails::Helpers::URLToJavaScript
	include Phlex::Rails::Helpers::URLToJavascript

	def self.included(_)
		warn "`Phlex::Rails::Helpers::URLToJavaScript` is deprecated. Please use `Phlex::Rails::Helpers::URLToJavascript` instead."
	end
end
