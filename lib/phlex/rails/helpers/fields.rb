# frozen_string_literal: true

module Phlex::Rails::Helpers::Fields
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-fields)
	register_builder_yielding_helper def fields(...) = nil, Phlex::Rails::FormBuilder
end
