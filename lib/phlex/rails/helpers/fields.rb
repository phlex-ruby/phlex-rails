# frozen_string_literal: true

module Phlex::Rails::Helpers::Fields
	extend Phlex::Rails::HelperMacros

	register_builder_yielding_helper def fields(...) = nil, Phlex::Rails::BufferedFormBuilder
end
