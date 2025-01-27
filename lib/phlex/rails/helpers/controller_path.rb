# frozen_string_literal: true

module Phlex::Rails::Helpers::ControllerPath
	extend Phlex::Rails::HelperMacros

	register_value_helper def controller_path(...) = nil
end
