# frozen_string_literal: true

module Phlex::Rails::Helpers::Label
	extend Phlex::Rails::HelperMacros

	register_builder_yielding_helper def label(...) = nil, Phlex::Rails::BufferedLabelBuilder
end
