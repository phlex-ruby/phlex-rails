# frozen_string_literal: true

module Phlex::Rails::Helpers::Excerpt
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/TextHelper.html#method-i-excerpt)
	register_value_helper def excerpt(...) = nil
end
