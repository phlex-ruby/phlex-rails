# frozen_string_literal: true

module Phlex::Rails::Helpers::ContentTag
	extend Phlex::Rails::HelperMacros

	# @!method content_tag(...)
	# 	@return [nil]
	define_output_helper_with_capture_block :content_tag
end
