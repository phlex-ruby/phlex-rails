# frozen_string_literal: true

module Phlex::Rails::Helpers::NumberToPhone
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/NumberHelper.html#method-i-number_to_phone)
	register_value_helper def number_to_phone(...) = nil
end
