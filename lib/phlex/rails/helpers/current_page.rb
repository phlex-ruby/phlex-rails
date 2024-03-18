# frozen_string_literal: true

module Phlex::Rails::Helpers::CurrentPage
	extend Phlex::Rails::HelperMacros

	# @!method current_page?(...)
	register_value_helper :current_page?
end
