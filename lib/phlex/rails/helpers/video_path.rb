# frozen_string_literal: true

module Phlex::Rails::Helpers::VideoPath
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetUrlHelper.html#method-i-video_path)
	register_value_helper def video_path(...) = nil
end
