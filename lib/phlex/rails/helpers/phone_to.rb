# frozen_string_literal: true

module Phlex::Rails::Helpers::PhoneTo
	extend Phlex::Rails::HelperMacros

	# @!method phone_to(...)
	# 	@return [nil]
	define_output_helper_with_capture_block :phone_to
end
