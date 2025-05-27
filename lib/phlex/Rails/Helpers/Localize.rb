# frozen_string_literal: true

module Phlex::Rails::Helpers::Localize
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/AbstractController/Translation.html#method-i-localize)
	register_value_helper def localize(...) = nil
end
