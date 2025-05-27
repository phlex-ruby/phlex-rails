# frozen_string_literal: true

module Phlex::Rails::Helpers::Truncate
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/TextHelper.html#method-i-truncate)
	register_value_helper def truncate(...) = nil
end
