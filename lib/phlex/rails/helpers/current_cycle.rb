# frozen_string_literal: true

module Phlex::Rails::Helpers::CurrentCycle
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/TextHelper.html#method-i-current_cycle)
	register_value_helper def current_cycle(...) = nil
end
