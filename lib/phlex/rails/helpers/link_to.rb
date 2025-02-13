# frozen_string_literal: true

module Phlex::Rails::Helpers::LinkTo
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/UrlHelper.html#method-i-link_to)
	register_output_helper def link_to(...) = nil
end
