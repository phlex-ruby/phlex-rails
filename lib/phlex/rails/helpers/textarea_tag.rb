# frozen_string_literal: true

module Phlex::Rails::Helpers::TextAreaTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-textarea_tag)
	register_output_helper def textarea_tag(...) = nil
end
