# frozen_string_literal: true

module Phlex::Rails::Helpers::ButtonTo
	extend Phlex::Rails::HelperMacros

	# @!method button_to(...)
	# 	@return [nil]
	define_output_helper_with_capture_block :button_to
end
