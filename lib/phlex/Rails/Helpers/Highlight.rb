# frozen_string_literal: true

module Phlex::Rails::Helpers::Highlight
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/TextHelper.html#method-i-highlight)
	register_output_helper def highlight(...) = nil
end
