# frozen_string_literal: true

module Phlex::Rails::Helpers::DOMID
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/RecordIdentifier.html#method-i-dom_id)
	register_value_helper def dom_id(...) = nil
end
