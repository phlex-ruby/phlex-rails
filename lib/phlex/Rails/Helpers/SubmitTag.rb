# frozen_string_literal: true

module Phlex::Rails::Helpers::SubmitTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-submit_tag)
	register_output_helper def submit_tag(...) = nil
end
