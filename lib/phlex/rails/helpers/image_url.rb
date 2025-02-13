# frozen_string_literal: true

module Phlex::Rails::Helpers::ImageURL
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetUrlHelper.html#method-i-image_url)
	register_value_helper def image_url(...) = nil
end
