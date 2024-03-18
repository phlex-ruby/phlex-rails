# frozen_string_literal: true

module Phlex::Rails::Helpers::AssetPath
	extend Phlex::Rails::HelperMacros

	# @!method asset_path(source, host: nil, protocol: nil, type: nil, skip_pipeline: nil, extname: nil)
	# 	@param source [String]
	# 	@param host [String]
	# 	@param protocol [String] e.g. <code>"https"</code>
	# 	@param type [Symbol] e.g. <code>:javascript</code>
	# 	@param skip_pipeline [bool]
	# 	@param extname [String] e.g. <code>".js"</code>
	# 	@see https://api.rubyonrails.org/classes/ActionView/Helpers/AssetUrlHelper.html#method-i-asset_path
	register_value_helper :asset_path
end
