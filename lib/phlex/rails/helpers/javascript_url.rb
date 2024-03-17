# frozen_string_literal: true

module Phlex::Rails::Helpers::JavascriptURL
	extend Phlex::Rails::HelperMacros

	# @!method javascript_url(...)
	define_value_helper :javascript_url
end

module Phlex::Rails::Helpers::JavaScriptURL
	include Phlex::Rails::Helpers::JavascriptURL

	def self.included(_)
		warn "[DEPRECATION] Phlex::Rails::Helpers::JavaScriptURL is deprecated. Please use Phlex::Rails::Helpers::JavascriptURL instead."
	end
end
