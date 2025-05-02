# frozen_string_literal: true

module Phlex::Rails::Helpers::FormFor
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-form_for)
	register_builder_yielding_helper def form_for(...) = nil
end
