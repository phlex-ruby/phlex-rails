# frozen_string_literal: true

module Phlex::Rails::Helpers::ContentFor
	extend Phlex::Rails::HelperMacros

	# @!method content_for?(...)
	define_value_helper :content_for?

	# @!method content_for(...)
	define_value_helper_with_capture_block :content_for
end
