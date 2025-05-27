# frozen_string_literal: true

module Phlex::Rails::Helpers::OptionsForSelect
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormOptionsHelper.html#method-i-options_for_select)
	register_output_helper def options_for_select(...) = nil
end
