# frozen_string_literal: true

module Phlex::Rails::Helpers::ControllerPath
	extend Phlex::Rails::HelperMacros

	# @!method controller_path(...)
	register_value_helper :controller_path
end
