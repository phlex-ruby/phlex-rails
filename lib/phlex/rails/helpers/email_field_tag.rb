# frozen_string_literal: true

module Phlex::Rails::Helpers::EmailFieldTag
	extend Phlex::Rails::HelperMacros

	# @!method email_field_tag(...)
	# 	@return [nil]
	register_output_helper :email_field_tag
end
