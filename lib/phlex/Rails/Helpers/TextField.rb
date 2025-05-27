# frozen_string_literal: true

module Phlex::Rails::Helpers::TextField
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-text_field)
	register_output_helper def text_field(...) = nil
end
