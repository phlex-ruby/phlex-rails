# frozen_string_literal: true

module Phlex::Rails::Helpers::StripTags
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/SanitizeHelper.html#method-i-strip_tags)
	register_value_helper def strip_tags(...) = nil
end
