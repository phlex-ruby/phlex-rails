# frozen_string_literal: true

module Phlex::Rails::Helpers::Debug
	extend Phlex::Rails::HelperMacros

	# @!method debug(...)
	# 	@return [nil]
	define_output_helper :debug
end
