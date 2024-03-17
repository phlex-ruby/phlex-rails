# frozen_string_literal: true

module Phlex::Rails::Helpers::CheckBox
	extend Phlex::Rails::HelperMacros

	# @!method check_box(...)
	# 	@return [nil]
	define_output_helper :check_box
end

module Phlex::Rails::Helpers::Checkbox
	include Phlex::Rails::Helpers::CheckBox

	def self.included(_)
		warn "[DEPRECATION] Phlex::Rails::Helpers::Checkbox is deprecated. Please use Phlex::Rails::Helpers::CheckBox instead."
	end
end
