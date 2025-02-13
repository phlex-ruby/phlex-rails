# frozen_string_literal: true

module Phlex::Rails::Helpers::FileFieldTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-file_field_tag)
	register_output_helper def file_field_tag(...) = nil
end
