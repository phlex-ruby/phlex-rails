# frozen_string_literal: true

module Phlex::Rails::Helpers::Pluralize
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/TextHelper.html#method-i-pluralize)
	register_value_helper def pluralize(...) = nil
end
