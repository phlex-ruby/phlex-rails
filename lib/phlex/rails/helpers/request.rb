# frozen_string_literal: true

module Phlex::Rails::Helpers::Request
	extend Phlex::Rails::HelperMacros

	# Available from [ActionController::Base](https://api.rubyonrails.org/classes/ActionController/Base.html), this method returns an instance of [ActionDispatch::Request](https://api.rubyonrails.org/classes/ActionDispatch/Request.html) for the current request.
	register_value_helper def request(...) = nil
end
