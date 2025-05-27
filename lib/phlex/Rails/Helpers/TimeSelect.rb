# frozen_string_literal: true

module Phlex::Rails::Helpers::TimeSelect
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/DateHelper.html#method-i-time_select)
	register_output_helper def time_select(...) = nil
end
