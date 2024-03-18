# frozen_string_literal: true

module Phlex::Rails::Helpers::DatetimeField
	extend Phlex::Rails::HelperMacros

	# @!method datetime_field(...)
	# 	@return [nil]
	register_output_helper :datetime_field
end

module Phlex::Rails::Helpers::DateTimeField
	include Phlex::Rails::Helpers::DatetimeField

	def self.included(_)
		warn "[DEPRECATION] Phlex::Rails::Helpers::DateTimeField is deprecated. Please use Phlex::Rails::Helpers::DatetimeField instead."
	end
end
