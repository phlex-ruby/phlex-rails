# frozen_string_literal: true

module Phlex::Rails::Helpers::PhoneTo
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/UrlHelper.html#method-i-phone_to)
	register_output_helper def phone_to(...) = nil
end
