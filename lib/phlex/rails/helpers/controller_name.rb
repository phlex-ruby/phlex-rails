# frozen_string_literal: true

module Phlex::Rails::Helpers::ControllerName
	extend Phlex::Rails::HelperMacros

	register_value_helper def controller_name(...) = nil
end
