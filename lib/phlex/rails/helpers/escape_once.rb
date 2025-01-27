# frozen_string_literal: true

module Phlex::Rails::Helpers::EscapeOnce
	extend Phlex::Rails::HelperMacros

	register_value_helper def escape_once(...) = nil
end
