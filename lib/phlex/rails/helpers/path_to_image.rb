# frozen_string_literal: true

module Phlex::Rails::Helpers::PathToImage
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetUrlHelper.html#method-i-path_to_image)
	register_value_helper def path_to_image(...) = nil
end
