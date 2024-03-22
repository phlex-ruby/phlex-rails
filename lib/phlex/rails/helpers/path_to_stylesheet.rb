# frozen_string_literal: true

module Phlex::Rails::Helpers::PathToStylesheet
	extend Phlex::Rails::HelperMacros

	# @!method path_to_stylesheet(...)
	register_value_helper :path_to_stylesheet
end

module Phlex::Rails::Helpers::PathToStyleSheet
	include Phlex::Rails::Helpers::PathToStylesheet

	def self.included(_)
		warn "[DEPRECATION] Phlex::Rails::Helpers::PathToStyleSheet is deprecated. Please use Phlex::Rails::Helpers::PathToStylesheet instead."
	end
end
