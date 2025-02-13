# frozen_string_literal: true

module Phlex::Rails::Helpers::URLField
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-url_field)
	register_output_helper def url_field(...) = nil
end
