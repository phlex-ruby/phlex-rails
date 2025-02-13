# frozen_string_literal: true

module Phlex::Rails::Helpers::VideoTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetTagHelper.html#method-i-video_tag)
	register_output_helper def video_tag(...) = nil
end
