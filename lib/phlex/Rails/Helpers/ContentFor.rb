# frozen_string_literal: true

module Phlex::Rails::Helpers::ContentFor
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/CaptureHelper.html#method-i-content_for)
	register_value_helper def content_for(...) = nil

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/CaptureHelper.html#method-i-content_for-3F)
	register_value_helper def content_for?(...) = nil
end
