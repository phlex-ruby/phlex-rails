# frozen_string_literal: true

module Phlex::Rails::Helpers::UTF8EnforcerTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-utf8_enforcer_tag)
	register_output_helper def utf8_enforcer_tag(...) = nil
end
