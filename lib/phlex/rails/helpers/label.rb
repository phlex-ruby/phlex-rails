# frozen_string_literal: true

module Phlex::Rails::Helpers::Label
	extend Phlex::Rails::HelperMacros

	# @!method label(...)
	register_builder_yielding_helper :label, Phlex::Rails::BufferedLabelBuilder
end
