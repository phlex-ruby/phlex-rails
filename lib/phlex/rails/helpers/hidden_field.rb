# frozen_string_literal: true

module Phlex::Rails::Helpers::HiddenField
	extend Phlex::Rails::HelperMacros

	# @!method hidden_field(...)
	# 	@return [nil]
	register_output_helper :hidden_field
end
