# frozen_string_literal: true

module Phlex::Rails::Helpers::DatetimeSelect
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/DateHelper.html#method-i-datetime_select)
	register_output_helper def datetime_select(...) = nil
end
