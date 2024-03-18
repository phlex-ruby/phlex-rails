# frozen_string_literal: true

module Phlex::Rails::Helpers::DateTimeLocalFieldTag
	extend Phlex::Rails::HelperMacros

	# @!method datetime_local_field_tag(...)
	# 	@return [nil]
	register_output_helper :datetime_local_field_tag
end

module Phlex::Rails::Helpers::DateTimeLocalFieldTag
	include Phlex::Rails::Helpers::DatetimeLocalFieldTag

	def self.included(_)
		warn "[DEPRECATION] Phlex::Rails::Helpers::DateTimeLocalFieldTag is deprecated. Please use Phlex::Rails::Helpers::DatetimeLocalFieldTag instead."
	end
end
