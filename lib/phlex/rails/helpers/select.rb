# frozen_string_literal: true

module Phlex::Rails::Helpers::Select
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormOptionsHelper.html#method-i-select)
	register_output_helper def select(...) = nil
end
