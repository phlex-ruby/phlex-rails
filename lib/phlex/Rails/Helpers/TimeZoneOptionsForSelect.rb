# frozen_string_literal: true

module Phlex::Rails::Helpers::TimeZoneOptionsForSelect
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormOptionsHelper.html#method-i-time_zone_options_for_select)
	register_output_helper def time_zone_options_for_select(...) = nil
end
