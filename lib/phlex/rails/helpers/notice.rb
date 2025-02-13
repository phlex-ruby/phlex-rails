# frozen_string_literal: true

module Phlex::Rails::Helpers::Notice
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionDispatch/Flash/FlashHash.html#method-i-notice)
	register_value_helper def notice(...) = nil
end
