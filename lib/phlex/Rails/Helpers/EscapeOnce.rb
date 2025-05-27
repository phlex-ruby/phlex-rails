# frozen_string_literal: true

module Phlex::Rails::Helpers::EscapeOnce
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/TagHelper.html#method-i-escape_once)
	register_value_helper def escape_once(...) = nil
end
