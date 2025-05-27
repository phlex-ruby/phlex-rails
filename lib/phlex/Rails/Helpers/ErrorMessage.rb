# frozen_string_literal: true

module Phlex::Rails::Helpers::ErrorMessage
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/ActiveModelInstanceTag.html#method-i-error_message)
	register_value_helper def error_message(...) = nil
end
