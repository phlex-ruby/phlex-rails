# frozen_string_literal: true

module Phlex::Rails::Helpers::TurboRefreshesWith
	extend Phlex::Rails::HelperMacros

	# @!method turbo_refresh_method_tag(...)
	#   @return [nil]
	register_output_helper :turbo_refreshes_with
end
