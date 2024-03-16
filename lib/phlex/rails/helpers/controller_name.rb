# frozen_string_literal: true

module Phlex::Rails::Helpers::ControllerName
	extend Phlex::Rails::HelperMacros

	# @!method controller_name(...)
	define_value_helper :controller_name
end
