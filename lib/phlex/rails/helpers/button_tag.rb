# frozen_string_literal: true

module Phlex::Rails::Helpers::ButtonTag
	extend Phlex::Rails::HelperMacros

	# @!method button_tag(...)
	# 	@return [nil]
	define_output_helper_with_capture_block :button_tag
end
