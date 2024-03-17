# frozen_string_literal: true

module Phlex::Rails::Helpers::DatetimeLocalField
	extend Phlex::Rails::HelperMacros

	# @!method datetime_local_field(...)
	# 	@return [nil]
	define_output_helper :datetime_local_field
end

module Phlex::Rails::Helpers::DateTimeLocalField
	include Phlex::Rails::Helpers::DatetimeLocalField

	def self.included(_)
		warn "[DEPRECATION] Phlex::Rails::Helpers::DateTimeLocalField is deprecated. Please use Phlex::Rails::Helpers::DatetimeLocalField instead."
	end
end
