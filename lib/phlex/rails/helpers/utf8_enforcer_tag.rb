# frozen_string_literal: true

module Phlex::Rails::Helpers::UTF8EnforcerTag
	extend Phlex::Rails::HelperMacros

	register_output_helper def utf8_enforcer_tag(...) = nil
end
