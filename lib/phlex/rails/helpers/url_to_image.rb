# frozen_string_literal: true

module Phlex::Rails::Helpers::URLToImage
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetUrlHelper.html#method-i-url_to_image)
	register_value_helper def url_to_image(...) = nil
end
