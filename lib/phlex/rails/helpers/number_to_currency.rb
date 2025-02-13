# frozen_string_literal: true

module Phlex::Rails::Helpers::NumberToCurrency
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/NumberHelper.html#method-i-number_to_currency
	register_value_helper def number_to_currency(...) = nil
end
