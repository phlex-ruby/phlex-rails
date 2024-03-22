# frozen_string_literal: true

module Phlex::Rails::Helpers::SanitizeCSS
	extend Phlex::Rails::HelperMacros

	# @!method sanitize_css(...)
	register_value_helper :sanitize_css
end

module Phlex::Rails::Helpers::SanitizeCss
	include Phlex::Rails::Helpers::SanitizeCSS

	def self.included
		warn "Phlex::Rails::Helpers::SanitizeCss is deprecated. Use Phlex::Rails::Helpers::SanitizeCSS instead."
	end
end
