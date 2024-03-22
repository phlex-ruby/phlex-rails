# frozen_string_literal: true

module Phlex::Rails::Helpers::FormTag
	extend Phlex::Rails::HelperMacros

	# @!method form_tag(...)
	# 	@return [nil]
	register_output_helper :form_tag
end
