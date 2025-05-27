# frozen_string_literal: true

module Phlex::Rails::Helpers::JavaScriptTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/JavaScriptHelper.html#method-i-javascript_tag)
	register_output_helper def javascript_tag(...) = nil
end
