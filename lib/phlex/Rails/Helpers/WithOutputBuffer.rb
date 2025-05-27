# frozen_string_literal: true

module Phlex::Rails::Helpers::WithOutputBuffer
	extend Phlex::Rails::HelperMacros

	register_output_helper def with_output_buffer(...) = nil
end
