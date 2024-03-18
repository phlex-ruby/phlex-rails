# frozen_string_literal: true

module Phlex::Rails::Helpers::URLToStylesheet
	extend Phlex::Rails::HelperMacros

	# @!method url_to_stylesheet(...)
	register_value_helper :url_to_stylesheet
end

module Phlex::Rails::Helpers::URLToStyleSheet
	include Phlex::Rails::Helpers::URLToStylesheet

	def self.included(_)
		warn "`Phlex::Rails::Helpers::URLToStyleSheet` is deprecated. Please use `Phlex::Rails::Helpers::URLToStylesheet` instead."
	end
end
