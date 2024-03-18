# frozen_string_literal: true

module Phlex::Rails::Helpers::SelectDatetime
	extend Phlex::Rails::HelperMacros

	# @!method select_datetime(...)
	# 	@return [nil]
	register_output_helper :select_datetime
end

module Phlex::Rails::Helpers::SelectDateTime
	include Phlex::Rails::Helpers::SelectDatetime

	def self.included(_)
		warn "[DEPRECATION] Phlex::Rails::Helpers::SelectDateTime is deprecated. Please use Phlex::Rails::Helpers::SelectDatetime instead."
	end
end
