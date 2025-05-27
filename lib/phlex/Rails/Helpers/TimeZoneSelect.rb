# frozen_string_literal: true

module Phlex::Rails::Helpers::TimeZoneSelect
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormOptionsHelper.html#method-i-time_zone_select)
	register_output_helper def time_zone_select(...) = nil
end
