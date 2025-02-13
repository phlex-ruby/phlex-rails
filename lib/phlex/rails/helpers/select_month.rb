# frozen_string_literal: true

module Phlex::Rails::Helpers::SelectMonth
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/DateHelper.html#method-i-select_month)
	register_output_helper def select_month(...) = nil
end
