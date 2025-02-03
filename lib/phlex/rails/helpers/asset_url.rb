# frozen_string_literal: true

# Phlex adapter for the [`asset_url`](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetUrlHelper.html#method-i-asset_url) Rails helper.
module Phlex::Rails::Helpers::AssetURL
	extend Phlex::Rails::HelperMacros

	# Computes the full URL to an asset in the public directory.
	#
	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetUrlHelper.html#method-i-asset_url)
	register_value_helper def asset_url(...) = nil
end
