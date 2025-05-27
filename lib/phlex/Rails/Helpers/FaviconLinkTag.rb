# frozen_string_literal: true

module Phlex::Rails::Helpers::FaviconLinkTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetTagHelper.html#method-i-favicon_link_tag)
	register_output_helper def favicon_link_tag(...) = nil
end
