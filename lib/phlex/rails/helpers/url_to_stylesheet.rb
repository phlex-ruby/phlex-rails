# frozen_string_literal: true

module Phlex::Rails::Helpers::URLToStyleSheet
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetUrlHelper.html#method-i-url_to_stylesheet)
	register_value_helper def url_to_stylesheet(...) = nil
end
