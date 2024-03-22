# frozen_string_literal: true

module Phlex::Rails::Helpers::TimeAgoInWords
	extend Phlex::Rails::HelperMacros

	# @!method time_ago_in_words(...)
	register_value_helper :time_ago_in_words
end
