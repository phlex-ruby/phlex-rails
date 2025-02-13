# frozen_string_literal: true

module Phlex::Rails::Helpers::HiddenField
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-hidden_field)
	register_output_helper def hidden_field(...) = nil
end
