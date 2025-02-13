# frozen_string_literal: true

module Phlex::Rails::Helpers::PathToAudio
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetUrlHelper.html#method-i-path_to_audio)
	register_value_helper def path_to_audio(...) = nil
end
