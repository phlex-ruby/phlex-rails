# frozen_string_literal: true

module Phlex::Rails::Helpers::FormWith
	extend Phlex::Rails::HelperMacros

	register_builder_yielding_helper def form_with(...) = nil, Phlex::Rails::BufferedFormBuilder
end
