# frozen_string_literal: true

module Phlex::Rails::Helpers::ButtonTo
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/UrlHelper.html#method-i-button_to)
	register_output_helper def button_to(...) = nil
end
