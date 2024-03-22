# frozen_string_literal: true

module Phlex::Rails::Helpers::NumberToCurrency
	extend Phlex::Rails::HelperMacros

	# @!method number_to_currency(...)
	register_value_helper :number_to_currency
end
