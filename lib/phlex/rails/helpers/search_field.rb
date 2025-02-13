# frozen_string_literal: true

module Phlex::Rails::Helpers::SearchField
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-search_field)
	register_output_helper def search_field(...) = nil
end
