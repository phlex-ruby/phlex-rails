# frozen_string_literal: true

module Phlex::Rails::Helpers::FontURL
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetUrlHelper.html#method-i-font_url)
	register_value_helper def font_url(...) = nil
end
