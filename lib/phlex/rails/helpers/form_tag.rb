# frozen_string_literal: true

module Phlex::Rails::Helpers::FormTag
	extend Phlex::Rails::HelperMacros

	# @!method form_tag(...)
	# 	@return [nil]
	define_output_helper_with_capture_block :form_tag
end
