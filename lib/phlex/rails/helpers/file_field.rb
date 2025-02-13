# frozen_string_literal: true

module Phlex::Rails::Helpers::FileField
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-file_field)
	register_output_helper def file_field(...) = nil
end
