# frozen_string_literal: true

module Phlex::Rails::Helpers::RadioButton
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-radio_button)
	register_output_helper def radio_button(...) = nil
end
