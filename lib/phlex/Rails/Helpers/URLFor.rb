# frozen_string_literal: true

module Phlex::Rails::Helpers::URLFor
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/RoutingUrlFor.html#method-i-url_for)
	register_value_helper def url_for(...) = nil
end
