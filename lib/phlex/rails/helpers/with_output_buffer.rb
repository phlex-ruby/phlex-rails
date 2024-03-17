# frozen_string_literal: true

module Phlex::Rails::Helpers::WithOutputBuffer
	extend Phlex::Rails::HelperMacros

	# @!method with_output_buffer(...)
	# 	@return [nil]
	define_output_helper_with_capture_block :with_output_buffer
end
