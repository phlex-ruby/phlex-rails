# frozen_string_literal: true

module Phlex::Rails::Helpers::CurrentPage
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/UrlHelper.html#method-i-current_page-3F)
	register_value_helper def current_page?(...) = nil
end
