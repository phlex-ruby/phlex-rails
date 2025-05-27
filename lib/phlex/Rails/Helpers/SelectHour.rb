# frozen_string_literal: true

module Phlex::Rails::Helpers::SelectHour
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/DateHelper.html#method-i-select_hour)
	register_output_helper def select_hour(...) = nil
end
