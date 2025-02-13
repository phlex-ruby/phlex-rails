# frozen_string_literal: true

module Phlex::Rails::Helpers::DateSelect
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/DateHelper.html#method-i-date_select)
	register_output_helper def date_select(...) = nil
end
