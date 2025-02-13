# frozen_string_literal: true

module Phlex::Rails::Helpers::ContentTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/TagHelper.html#method-i-content_tag)
	register_output_helper def content_tag(...) = nil
end
