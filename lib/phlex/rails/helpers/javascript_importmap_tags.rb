# frozen_string_literal: true

module Phlex::Rails::Helpers::JavaScriptImportmapTags
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://github.com/rails/importmap-rails)
	register_output_helper def javascript_importmap_tags(...) = nil
end
