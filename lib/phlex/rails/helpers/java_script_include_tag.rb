# frozen_string_literal: true

module Phlex::Rails::Helpers::JavaScriptIncludeTag
	def javascript_include_tag(...)
		unsafe_raw helpers.javascript_include_tag(...)
	end
end
