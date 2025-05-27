# frozen_string_literal: true

module Phlex::Rails::Helpers::SearchFieldTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-search_field_tag)
	register_output_helper def search_field_tag(...) = nil
end
