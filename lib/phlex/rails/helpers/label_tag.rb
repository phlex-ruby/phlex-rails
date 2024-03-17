# frozen_string_literal: true

module Phlex::Rails::Helpers::LabelTag
	extend Phlex::Rails::HelperMacros

	# @!method label_tag(...)
	# 	@return [nil]
	define_output_helper_with_capture_block :label_tag
end
