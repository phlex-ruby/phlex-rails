# frozen_string_literal: true

module Phlex::Rails::Helpers::SelectTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-select_tag)
	register_output_helper def select_tag(...) = nil
end
