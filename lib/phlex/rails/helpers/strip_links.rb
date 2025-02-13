# frozen_string_literal: true

module Phlex::Rails::Helpers::StripLinks
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/SanitizeHelper.html#method-i-strip_links)
	register_value_helper def strip_links(...) = nil
end
