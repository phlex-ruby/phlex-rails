# frozen_string_literal: true

module Phlex::Rails::Helpers::ImageTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetTagHelper.html#method-i-image_tag)
	register_output_helper def image_tag(...) = nil
end
