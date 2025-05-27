# frozen_string_literal: true

module Phlex::Rails::Helpers::WordWrap
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/TextHelper.html#method-i-word_wrap)
	register_value_helper def word_wrap(...) = nil
end
