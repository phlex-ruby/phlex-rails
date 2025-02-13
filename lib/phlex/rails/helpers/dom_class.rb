# frozen_string_literal: true

module Phlex::Rails::Helpers::DOMClass
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/RecordIdentifier.html#method-i-dom_class)
	register_value_helper def dom_class(...) = nil
end
