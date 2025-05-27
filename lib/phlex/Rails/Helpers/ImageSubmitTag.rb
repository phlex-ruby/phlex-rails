# frozen_string_literal: true

module Phlex::Rails::Helpers::ImageSubmitTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-image_submit_tag)
	register_output_helper def image_submit_tag(...) = nil
end
