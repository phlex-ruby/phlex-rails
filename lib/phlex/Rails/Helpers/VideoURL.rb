# frozen_string_literal: true

module Phlex::Rails::Helpers::VideoURL
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetUrlHelper.html#method-i-video_url)
	register_value_helper def video_url(...) = nil
end
