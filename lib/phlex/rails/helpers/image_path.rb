# frozen_string_literal: true

module Phlex::Rails::Helpers::ImagePath
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetUrlHelper.html#method-i-image_path)
	register_value_helper def image_path(...) = nil
end
