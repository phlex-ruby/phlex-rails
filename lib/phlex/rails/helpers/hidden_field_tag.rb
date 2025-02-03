# frozen_string_literal: true

module Phlex::Rails::Helpers::HiddenFieldTag
	extend Phlex::Rails::HelperMacros

	register_output_helper def hidden_field_tag(...) = nil
end
