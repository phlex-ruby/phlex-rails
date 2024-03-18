# frozen_string_literal: true

module Phlex::Rails::Helpers::LinkTo
	extend Phlex::Rails::HelperMacros

	# @!method link_to(...)
	# 	@return [nil]
	register_output_helper :link_to
end
