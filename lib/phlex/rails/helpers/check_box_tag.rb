# frozen_string_literal: true

module Phlex::Rails::Helpers::CheckBoxTag
	extend Phlex::Rails::HelperMacros

	# @!method check_box_tag(...)
	# 	@return [nil]
	register_output_helper :check_box_tag
end

module Phlex::Rails::Helpers::CheckboxTag
	include Phlex::Rails::Helpers::CheckBoxTag

	def self.included(_)
		warn "[DEPRECATION] Phlex::Rails::Helpers::CheckboxTag is deprecated. Please use Phlex::Rails::Helpers::CheckBoxTag instead."
	end
end
