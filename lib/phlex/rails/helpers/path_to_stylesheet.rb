# frozen_string_literal: true

module Phlex::Rails::Helpers::PathToStyleSheet
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetUrlHelper.html#method-i-path_to_stylesheet)
	register_value_helper def path_to_stylesheet(...) = nil
end
