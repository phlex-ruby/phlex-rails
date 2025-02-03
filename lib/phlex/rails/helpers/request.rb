# frozen_string_literal: true

module Phlex::Rails::Helpers::Request
	extend Phlex::Rails::HelperMacros

	register_value_helper def request(...) = nil
end
