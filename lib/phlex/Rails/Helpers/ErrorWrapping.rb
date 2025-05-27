# frozen_string_literal: true

module Phlex::Rails::Helpers::ErrorWrapping
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/ActiveModelInstanceTag.html#method-i-error_wrapping)
	register_output_helper def error_wrapping(...) = nil
end
