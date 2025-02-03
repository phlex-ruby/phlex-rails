# frozen_string_literal: true

module Phlex::Rails::Helpers::ErrorWrapping
	extend Phlex::Rails::HelperMacros

	register_output_helper def error_wrapping(...) = nil
end
