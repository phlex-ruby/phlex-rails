# frozen_string_literal: true

module Phlex::Rails::Helpers::ClassNames
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/TagHelper.html#method-i-class_names)
	register_value_helper def class_names(...) = nil
end
