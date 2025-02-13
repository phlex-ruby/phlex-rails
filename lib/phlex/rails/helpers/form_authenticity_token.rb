# frozen_string_literal: true

module Phlex::Rails::Helpers::FormAuthenticityToken
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionController/RequestForgeryProtection.html#method-i-form_authenticity_token)
	register_value_helper def form_authenticity_token(...) = nil
end
