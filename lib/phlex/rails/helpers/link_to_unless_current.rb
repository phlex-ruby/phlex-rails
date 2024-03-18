# frozen_string_literal: true

module Phlex::Rails::Helpers::LinkToUnlessCurrent
	extend Phlex::Rails::HelperMacros

	# @!method link_to_unless_current(...)
	# 	@return [nil]
	register_output_helper :link_to_unless_current
end
