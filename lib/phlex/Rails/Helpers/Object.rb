# frozen_string_literal: true

module Phlex::Rails::Helpers::Object
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/ActiveModelInstanceTag.html#method-i-object)
	register_value_helper def object(...) = nil
end
