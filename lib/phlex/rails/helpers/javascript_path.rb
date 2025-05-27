# frozen_string_literal: true

module Phlex::Rails::Helpers::JavaScriptPath
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetUrlHelper.html#method-i-javascript_path)
	register_value_helper def javascript_path(...) = nil
end
