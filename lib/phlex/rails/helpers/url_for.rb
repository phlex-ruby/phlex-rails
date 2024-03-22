# frozen_string_literal: true

module Phlex::Rails::Helpers::URLFor
	extend Phlex::Rails::HelperMacros

	# @!method url_for(...)
	register_value_helper :url_for
end
