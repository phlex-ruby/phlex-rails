# frozen_string_literal: true

module Phlex::Rails::Helpers::PathToAsset
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetUrlHelper.html#method-i-path_to_asset)
	register_value_helper def path_to_asset(...) = nil
end
