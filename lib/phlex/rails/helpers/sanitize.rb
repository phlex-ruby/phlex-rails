# frozen_string_literal: true

module Phlex::Rails::Helpers::Sanitize
	extend Phlex::Rails::HelperMacros

	# @!method sanitize(...)
	register_value_helper :sanitize
end
