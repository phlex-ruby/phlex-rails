# frozen_string_literal: true

module Phlex::Rails::Helpers::CollectionRadioButtons
	extend Phlex::Rails::HelperMacros

	register_builder_yielding_helper def collection_radio_buttons(...) = nil, Phlex::Rails::BufferedRadioButtonBuilder
end
