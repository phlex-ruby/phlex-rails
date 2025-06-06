# frozen_string_literal: true

module Phlex::Rails::Helpers::TextArea
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-textarea)
	register_output_helper def textarea(...) = nil

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-text_area)
	register_output_helper def text_area(...) = nil
end
