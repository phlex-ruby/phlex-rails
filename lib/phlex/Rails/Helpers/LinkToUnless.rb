# frozen_string_literal: true

module Phlex::Rails::Helpers::LinkToUnless
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/UrlHelper.html#method-i-link_to_unless)
	register_output_helper def link_to_unless(...) = nil
end
