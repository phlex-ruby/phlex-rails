# frozen_string_literal: true

module Phlex::Rails::Helpers::NumberField
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormBuilder.html#method-i-number_field)
	register_output_helper def number_field(...) = nil
end
