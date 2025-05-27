# frozen_string_literal: true

module Phlex::Rails::Helpers::Provide
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/CaptureHelper.html#method-i-provide)
	register_value_helper def provide(...) = nil
end
