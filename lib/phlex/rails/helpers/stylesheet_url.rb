# frozen_string_literal: true

module Phlex::Rails::Helpers::StylesheetURL
	extend Phlex::Rails::HelperMacros

	register_value_helper def stylesheet_url(...) = nil
end
