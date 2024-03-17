# frozen_string_literal: true

module Phlex::Rails::Helpers::Provide
	extend Phlex::Rails::HelperMacros

	# @!method provide(...)
	define_value_helper_with_capture_block :provide
end
