# frozen_string_literal: true

module Phlex::Rails::Helpers::TextArea
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-textarea)
	register_output_helper def textarea(...) = nil
end
