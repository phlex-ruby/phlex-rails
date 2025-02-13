# frozen_string_literal: true

module Phlex::Rails::Helpers::JavascriptURL
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetUrlHelper.html#method-i-javascript_url)
	register_value_helper def javascript_url(...) = nil
end
