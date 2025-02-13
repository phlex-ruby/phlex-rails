# frozen_string_literal: true

module Phlex::Rails::Helpers::FontPath
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetUrlHelper.html#method-i-font_path)
	register_value_helper def font_path(...) = nil
end
