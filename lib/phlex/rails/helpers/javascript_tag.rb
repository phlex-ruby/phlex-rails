# frozen_string_literal: true

module Phlex::Rails::Helpers::JavascriptTag
	extend Phlex::Rails::HelperMacros

	register_output_helper def javascript_tag(...) = nil
end
