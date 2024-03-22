# frozen_string_literal: true

module Phlex::Rails::Helpers::SelectTag
	extend Phlex::Rails::HelperMacros

	# @!method select_tag(...)
	# 	@return [nil]
	register_output_helper :select_tag
end
