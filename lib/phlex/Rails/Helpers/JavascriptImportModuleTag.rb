# frozen_string_literal: true

module Phlex::Rails::Helpers::JavascriptImportModuleTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://github.com/rails/importmap-rails)
	register_output_helper def javascript_import_module_tag(...) = nil
end
