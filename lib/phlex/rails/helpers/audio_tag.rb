# frozen_string_literal: true

module Phlex::Rails::Helpers::AudioTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetTagHelper.html#method-i-audio_tag)
	register_output_helper def audio_tag(...) = nil
end
