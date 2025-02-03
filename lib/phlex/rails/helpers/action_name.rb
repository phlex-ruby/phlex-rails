# frozen_string_literal: true

module Phlex::Rails::Helpers::ActionName
	extend Phlex::Rails::HelperMacros

	# Returns the name of the action this controller is processing.
	#
	# [Rails Docs](https://api.rubyonrails.org/classes/AbstractController/Base.html#method-i-action_name)
	register_value_helper def action_name(...) = nil
end
