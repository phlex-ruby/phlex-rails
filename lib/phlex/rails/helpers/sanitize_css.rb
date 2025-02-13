# frozen_string_literal: true

module Phlex::Rails::Helpers::SanitizeCSS
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/SanitizeHelper.html#method-i-sanitize_css)
	register_value_helper def sanitize_css(...) = nil
end
