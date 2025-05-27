# frozen_string_literal: true

module Phlex::Rails::Helpers::URLToJavaScript
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetUrlHelper.html#method-i-url_to_javascript)
	register_value_helper def url_to_javascript(...) = nil
end
