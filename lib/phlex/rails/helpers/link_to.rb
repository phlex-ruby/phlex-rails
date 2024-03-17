# frozen_string_literal: true

module Phlex::Rails::Helpers::LinkTo
	extend Phlex::Rails::HelperMacros

	# @!method link_to(...)
	# 	@return [nil]
	define_output_helper_with_capture_block :link_to
end
