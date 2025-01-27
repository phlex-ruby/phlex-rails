# frozen_string_literal: true

module Phlex::Rails::Helpers::LinkToUnlessCurrent
	extend Phlex::Rails::HelperMacros

	register_output_helper def link_to_unless_current(...) = nil
end
