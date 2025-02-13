# frozen_string_literal: true

module Phlex::Rails::Helpers::AudioURL
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetUrlHelper.html#method-i-audio_url)
	register_value_helper def audio_url(...) = nil
end
