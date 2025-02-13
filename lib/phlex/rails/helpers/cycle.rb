# frozen_string_literal: true

module Phlex::Rails::Helpers::Cycle
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/TextHelper.html#method-i-cycle)
	register_value_helper def cycle(...) = nil
end
