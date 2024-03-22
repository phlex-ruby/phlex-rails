# frozen_string_literal: true

module Phlex::Rails::Helpers::DatetimeFieldTag
	extend Phlex::Rails::HelperMacros

	# @!method datetime_field_tag(...)
	# 	@return [nil]
	register_output_helper :datetime_field_tag
end

module Phlex::Rails::Helpers::DateTimeFieldTag
	include Phlex::Rails::Helpers::DatetimeFieldTag

	def self.included(_)
		warn "[DEPRECATION] Phlex::Rails::Helpers::DateTimeFieldTag is deprecated. Please use Phlex::Rails::Helpers::DatetimeFieldTag instead."
	end
end
