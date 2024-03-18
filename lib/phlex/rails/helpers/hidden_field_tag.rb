# frozen_string_literal: true

module Phlex::Rails::Helpers::HiddenFieldTag
	extend Phlex::Rails::HelperMacros

	# @!method hidden_field_tag(...)
	# 	@return [nil]
	register_output_helper :hidden_field_tag
end
