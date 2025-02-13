# frozen_string_literal: true

module Phlex::Rails::Helpers::ResetCycle
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/TextHelper.html#method-i-reset_cycle)
	register_value_helper def reset_cycle(...) = nil
end
