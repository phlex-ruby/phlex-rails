# frozen_string_literal: true

module Phlex::Rails::Helpers::ControllerName
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionController/Metal.html#method-i-controller_name)
	register_value_helper def controller_name(...) = nil
end
