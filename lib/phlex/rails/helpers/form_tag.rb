# frozen_string_literal: true

module Phlex::Rails::Helpers::FormTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-form_tag)
	register_output_helper def form_tag(...) = nil
end
