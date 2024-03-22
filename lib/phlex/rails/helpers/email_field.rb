# frozen_string_literal: true

module Phlex::Rails::Helpers::EmailField
	extend Phlex::Rails::HelperMacros

	# @!method email_field(...)
	# 	@return [nil]
	register_output_helper :email_field
end
