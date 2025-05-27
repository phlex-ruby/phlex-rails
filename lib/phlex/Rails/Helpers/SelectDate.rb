# frozen_string_literal: true

module Phlex::Rails::Helpers::SelectDate
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/DateHelper.html#method-i-select_date)
	register_output_helper def select_date(...) = nil
end
