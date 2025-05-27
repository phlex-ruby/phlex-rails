# frozen_string_literal: true

module Phlex::Rails::Helpers::SelectDatetime
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/DateHelper.html#method-i-select_datetime)
	register_output_helper def select_datetime(...) = nil
end
