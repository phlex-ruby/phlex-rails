# frozen_string_literal: true

module Phlex::Rails::Helpers::RichTextArea
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-rich_text_area)
	register_output_helper def rich_text_area(...) = nil
end
