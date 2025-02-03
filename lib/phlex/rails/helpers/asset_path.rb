# frozen_string_literal: true

module Phlex::Rails::Helpers::AssetPath
	extend Phlex::Rails::HelperMacros

	# This is the entry point for all assets.
	#
	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetUrlHelper.html#method-i-asset_path)
	register_value_helper def asset_path(...) = nil
end
