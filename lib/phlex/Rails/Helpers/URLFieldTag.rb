# frozen_string_literal: true

module Phlex::Rails::Helpers::URLFieldTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-url_field_tag)
	register_output_helper def url_field_tag(...) = nil
end
