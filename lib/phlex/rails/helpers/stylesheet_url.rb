# frozen_string_literal: true

module Phlex::Rails::Helpers::StyleSheetURL
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetUrlHelper.html#method-i-stylesheet_url)
	register_value_helper def stylesheet_url(...) = nil
end
