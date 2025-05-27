# frozen_string_literal: true

module Phlex::Rails::Helpers::AssetURL
	extend Phlex::Rails::HelperMacros

	# Computes the full URL to an asset in the public directory.
	#
	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetUrlHelper.html#method-i-asset_url)
	register_value_helper def asset_url(...) = nil
end
