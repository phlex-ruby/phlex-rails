# frozen_string_literal: true

module Phlex::Rails::Helpers::WeekdaySelect
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormOptionsHelper.html#method-i-weekday_select)
	register_output_helper def weekday_select(...) = nil
end
