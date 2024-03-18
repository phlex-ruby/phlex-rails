# frozen_string_literal: true

module Phlex::Rails::Helpers::LinkToIf
	extend Phlex::Rails::HelperMacros

	# @!method link_to_if(...)
	# 	@return [nil]
	register_output_helper :link_to_if
end

module Phlex::Rails::Helpers::LinkIf
	include Phlex::Rails::Helpers::LinkToIf

	def self.included(_)
		warn "[DEPRECATION] Phlex::Rails::Helpers::LinkIf is deprecated. Please use Phlex::Rails::Helpers::LinkToIf instead."
	end
end
