# frozen_string_literal: true

module Phlex::Rails::Helpers::CollectionRadioButtons
	extend Phlex::Rails::HelperMacros

	# @!method collection_radio_buttons(...)
	# 	@yield [builder]
	# 	@yieldparam builder [Phlex::Rails::BufferedRadioButtonBuilder]
	register_builder_yielding_helper :collection_radio_buttons, Phlex::Rails::BufferedRadioButtonBuilder
end
