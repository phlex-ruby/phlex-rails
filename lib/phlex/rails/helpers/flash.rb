# frozen_string_literal: true

module Phlex::Rails::Helpers::Flash
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionDispatch/Flash/RequestMethods.html#method-i-flash)
	register_value_helper def flash(...) = nil
end
