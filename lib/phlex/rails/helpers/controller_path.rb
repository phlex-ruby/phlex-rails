# frozen_string_literal: true

module Phlex::Rails::Helpers::ControllerPath
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/AbstractController/Base.html#method-i-controller_path)
	register_value_helper def controller_path(...) = nil
end
