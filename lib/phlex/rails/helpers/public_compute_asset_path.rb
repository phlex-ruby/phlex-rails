# frozen_string_literal: true

module Phlex::Rails::Helpers::PublicComputeAssetPath
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetUrlHelper.html#method-i-public_compute_asset_path)
	register_value_helper def public_compute_asset_path(...) = nil
end
