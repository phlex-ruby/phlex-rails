# frozen_string_literal: true

module Phlex::Rails::Helpers::TimeTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/DateHelper.html#method-i-time_tag)
	register_output_helper def time_tag(...) = nil
end
