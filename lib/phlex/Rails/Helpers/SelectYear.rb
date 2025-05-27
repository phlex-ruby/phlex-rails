# frozen_string_literal: true

module Phlex::Rails::Helpers::SelectYear
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/DateHelper.html#method-i-select_year)
	register_output_helper def select_year(...) = nil
end
