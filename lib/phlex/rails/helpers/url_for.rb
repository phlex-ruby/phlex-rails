# frozen_string_literal: true

module Phlex::Rails::Helpers::URLFor
	extend Phlex::Rails::HelperMacros

	register_value_helper def url_for(...) = nil
end
