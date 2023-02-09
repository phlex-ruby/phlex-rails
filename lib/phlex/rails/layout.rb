# frozen_string_literal: true

module Phlex::Rails
	module Layout
		include Helpers::CSPMetaTag
		include Helpers::CSRFMetaTags
		include Helpers::FaviconLinkTag
		include Helpers::PreloadLinkTag
		include Helpers::StyleSheetLinkTag
		include Helpers::ActionCableMetaTag
		include Helpers::AutoDiscoveryLinkTag
		include Helpers::JavaScriptIncludeTag
		include Helpers::JavaScriptImportMapTags
		include Helpers::JavaScriptImportModuleTag
	end
end
