# frozen_string_literal: true

module Phlex::Rails::Helpers::FormFor
	extend Phlex::Rails::HelperMacros

	register_builder_yielding_helper def form_for(...) = nil, Phlex::Rails::BufferedFormBuilder
end
