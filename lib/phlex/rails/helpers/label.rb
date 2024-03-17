# frozen_string_literal: true

module Phlex::Rails::Helpers::Label
	extend Phlex::Rails::HelperMacros

	# @!method label(...)
	define_builder_yielding_helper :label, Phlex::Rails::BufferedLabelBuilder
end
