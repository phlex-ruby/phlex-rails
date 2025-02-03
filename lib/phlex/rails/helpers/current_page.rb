# frozen_string_literal: true

module Phlex::Rails::Helpers::CurrentPage
	extend Phlex::Rails::HelperMacros

	register_value_helper def current_page?(...) = nil
end
