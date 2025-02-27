# frozen_string_literal: true

module Phlex::Rails::Helpers::FormWith
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-form_with)
	register_builder_yielding_helper def form_with(...) = nil, Phlex::Rails::FormBuilder
end
