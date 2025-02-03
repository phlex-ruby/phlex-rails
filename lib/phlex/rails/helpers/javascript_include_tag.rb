# frozen_string_literal: true

module Phlex::Rails::Helpers::JavascriptIncludeTag
	extend Phlex::Rails::HelperMacros

	register_output_helper def javascript_include_tag(...) = nil
end
