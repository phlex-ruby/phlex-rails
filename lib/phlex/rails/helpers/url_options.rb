# frozen_string_literal: true

module Phlex::Rails::Helpers::URLOptions
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionController/UrlFor.html#method-i-url_options)
	register_value_helper def url_options(...) = nil
end
