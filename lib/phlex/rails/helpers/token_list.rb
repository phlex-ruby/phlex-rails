# frozen_string_literal: true

module Phlex::Rails::Helpers::TokenList
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/TagHelper.html#method-i-token_list)
	register_value_helper def token_list(...) = nil
end
