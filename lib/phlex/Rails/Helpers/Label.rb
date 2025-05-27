# frozen_string_literal: true

module Phlex::Rails::Helpers::Label
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-label)
	register_builder_yielding_helper def label(...) = nil
end
