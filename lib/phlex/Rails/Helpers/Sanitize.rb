# frozen_string_literal: true

module Phlex::Rails::Helpers::Sanitize
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/SanitizeHelper.html#method-i-sanitize)
	register_value_helper def sanitize(...) = nil
end
