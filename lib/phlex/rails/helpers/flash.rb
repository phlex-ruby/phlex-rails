# frozen_string_literal: true

module Phlex::Rails::Helpers::Flash
	extend Phlex::Rails::HelperMacros

	register_value_helper def flash(...) = nil
end
