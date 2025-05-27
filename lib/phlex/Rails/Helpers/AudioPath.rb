# frozen_string_literal: true

module Phlex::Rails::Helpers::AudioPath
	extend Phlex::Rails::HelperMacros

	# Computes the path to an audio asset in the public audios directory.
	#
	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetUrlHelper.html#method-i-audio_path)
	register_value_helper def audio_path(...) = nil
end
