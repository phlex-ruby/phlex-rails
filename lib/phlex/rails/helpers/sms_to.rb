# frozen_string_literal: true

module Phlex::Rails::Helpers::SMSTo
	extend Phlex::Rails::HelperMacros

	# @!method sms_to(...)
	# 	@return [nil]
	define_output_helper_with_capture_block :sms_to
end
