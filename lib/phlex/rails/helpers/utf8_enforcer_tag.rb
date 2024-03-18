# frozen_string_literal: true

module Phlex::Rails::Helpers::UTF8EnforcerTag
	extend Phlex::Rails::HelperMacros

	# @!method utf8_enforcer_tag(...)
	# 	@return [nil]
	register_output_helper :utf8_enforcer_tag
end
