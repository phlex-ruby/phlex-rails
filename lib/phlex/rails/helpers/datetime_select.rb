# frozen_string_literal: true

module Phlex::Rails::Helpers::DatetimeSelect
	extend Phlex::Rails::HelperMacros

	# @!method datetime_select(...)
	# 	@return [nil]
	define_output_helper :datetime_select
end

module Phlex::Rails::Helpers::DateTimeSelect
	include Phlex::Rails::Helpers::DatetimeSelect

	def self.included(_)
		warn "[DEPRECATION] Phlex::Rails::Helpers::DateTimeSelect is deprecated. Please use Phlex::Rails::Helpers::DatetimeSelect instead."
	end
end
