# frozen_string_literal: true

module Phlex::Rails::Helpers::StylesheetPath
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetUrlHelper.html#method-i-stylesheet_path)
	register_value_helper def stylesheet_path(...) = nil
end
