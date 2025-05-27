# frozen_string_literal: true

module Phlex::Rails::Helpers::SelectTime
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/DateHelper.html#method-i-select_time)
	register_output_helper def select_time(...) = nil
end
