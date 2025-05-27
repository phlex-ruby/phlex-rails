# frozen_string_literal: true

module Phlex::Rails::Helpers::AutoDiscoveryLinkTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetTagHelper.html#method-i-auto_discovery_link_tag)
	register_output_helper def auto_discovery_link_tag(...) = nil
end
