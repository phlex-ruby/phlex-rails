# frozen_string_literal: true

module Phlex::Rails::Helpers
	# These will not be suggested by RubyLSP, but they work as
	# aliases for legacy helper names.
	REDIRECTS = {
		:CheckBox => :Checkbox,
		:CheckBoxTag => :CheckboxTag,
		:CollectionCheckBoxes => :CollectionCheckboxes,
		:JavascriptImportModuleTag => :JavaScriptImportModuleTag,
		:JavascriptImportmapTags => :JavaScriptImportmapTags,
		:JavascriptIncludeTag => :JavaScriptIncludeTag,
		:JavascriptPath => :JavaScriptPath,
		:JavascriptTag => :JavaScriptTag,
		:JavascriptURL => :JavaScriptURL,
		:PathToJavascript => :PathToJavaScript,
		:PathToStylesheet => :PathToStyleSheet,
		:RichTextarea => :RichTextArea,
		:StylesheetLinkTag => :StyleSheetLinkTag,
		:StylesheetPath => :StyleSheetPath,
		:StylesheetURL => :StyleSheetURL,
		:Textarea => :TextArea,
		:TextareaTag => :TextAreaTag,
		:URLToJavascript => :URLToJavaScript,
		:URLToStylesheet => :URLToStyleSheet,
	}.freeze

	def self.const_missing(name)
		if (new_name = REDIRECTS[name])
			mod = const_get(new_name)
			const_set(name, mod)
			mod
		else
			super
		end
	end
end
