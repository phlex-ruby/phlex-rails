# frozen_string_literal: true

module Phlex::Rails::Helpers::Flash
	extend Phlex::Rails::HelperMacros

	# @!method flash(...)
	register_value_helper :flash
end
