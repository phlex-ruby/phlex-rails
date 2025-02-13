# frozen_string_literal: true

module Phlex::Rails::Helpers::NumberWithPrecision
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/NumberHelper.html#method-i-number_with_precision)
	register_value_helper def number_with_precision(...) = nil
end
