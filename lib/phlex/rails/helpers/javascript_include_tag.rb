# frozen_string_literal: true

module Phlex::Rails::Helpers::JavaScriptIncludeTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetTagHelper.html#method-i-javascript_include_tag)
	register_output_helper def javascript_include_tag(...) = nil
end
