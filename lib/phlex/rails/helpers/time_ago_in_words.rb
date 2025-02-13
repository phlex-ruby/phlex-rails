# frozen_string_literal: true

module Phlex::Rails::Helpers::TimeAgoInWords
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/DateHelper.html#method-i-time_ago_in_words)
	register_value_helper def time_ago_in_words(...) = nil
end
