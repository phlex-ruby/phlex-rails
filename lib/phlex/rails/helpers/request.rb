# frozen_string_literal: true

module Phlex::Rails::Helpers::Request
	extend Phlex::Rails::HelperMacros

	# @!method request(...)
	define_value_helper :request
end
