# frozen_string_literal: true

module Phlex::Rails::Helpers::LinkToUnlessCurrent
	extend Phlex::Rails::HelperMacros

	# @!method link_to_unless_current(...)
	# 	@return [nil]
	define_output_helper_with_capture_block :link_to_unless_current
end
