# frozen_string_literal: true

module Phlex::Rails::Helpers::WithOutputBuffer
	extend Phlex::Rails::HelperMacros

	# @!method with_output_buffer(...)
	# 	@return [nil]
	register_output_helper :with_output_buffer
end
