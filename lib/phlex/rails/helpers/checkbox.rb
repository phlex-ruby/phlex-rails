# frozen_string_literal: true

module Phlex::Rails::Helpers::Checkbox
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-checkbox)
	register_output_helper def checkbox(...) = nil
end
