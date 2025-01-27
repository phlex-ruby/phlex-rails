# frozen_string_literal: true

module Phlex::Rails::Helpers::Debug
	extend Phlex::Rails::HelperMacros

	register_output_helper def debug(...) = nil
end
