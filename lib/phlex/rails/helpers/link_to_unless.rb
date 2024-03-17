# frozen_string_literal: true

module Phlex::Rails::Helpers::LinkToUnless
	extend Phlex::Rails::HelperMacros

	# @!method link_to_unless(...)
	# 	@return [nil]
	define_output_helper_with_capture_block :link_to_unless
end
