# frozen_string_literal: true

module Phlex::Rails::Helpers::StyleSheetLinkTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetTagHelper.html#method-i-stylesheet_link_tag)
	register_output_helper def stylesheet_link_tag(...) = nil
end
