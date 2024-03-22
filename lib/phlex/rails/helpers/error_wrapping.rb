# frozen_string_literal: true

module Phlex::Rails::Helpers::ErrorWrapping
	extend Phlex::Rails::HelperMacros

	# @!method error_wrapping(...)
	# 	@return [nil]
	register_output_helper :error_wrapping
end
