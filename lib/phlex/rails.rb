# frozen_string_literal: true

require "phlex"

module Phlex
	module Rails
		class HelpersCalledBeforeRenderError < StandardError; end

		Loader = Zeitwerk::Loader.for_gem_extension(Phlex).tap do |loader|
			loader.ignore("#{__dir__}/ruby_lsp")

			loader.inflector.inflect(
				"asset_url" => "AssetURL",
				"audio_url" => "AudioURL",
				"csp_meta_tag" => "CSPMetaTag",
				"csrf_meta_tags" => "CSRFMetaTags",
				"csv" => "CSV",
				"default_url_options" => "DefaultURLOptions",
				"dom_class" => "DOMClass",
				"dom_id" => "DOMID",
				"field_id" => "FieldID",
				"font_url" => "FontURL",
				"image_url" => "ImageURL",
				"javascript_url" => "JavascriptURL",
				"sanitize_css" => "SanitizeCSS",
				"sgml" => "SGML",
				"sms_to" => "SMSTo",
				"stylesheet_url" => "StylesheetURL",
				"url_field" => "URLField",
				"url_field_tag" => "URLFieldTag",
				"url_for" => "URLFor",
				"url_options" => "URLOptions",
				"url_to_asset" => "URLToAsset",
				"url_to_audio" => "URLToAudio",
				"url_to_font" => "URLToFont",
				"url_to_image" => "URLToImage",
				"url_to_javascript" => "URLToJavascript",
				"url_to_stylesheet" => "URLToStylesheet",
				"url_to_video" => "URLToVideo",
				"utf8_enforcer_tag" => "UTF8EnforcerTag",
				"video_url" => "VideoURL",
			)

			loader.collapse("#{__dir__}/phlex/errors")
			loader.setup
		end
	end

	CSV.prepend(Phlex::Rails::CSV)
	CSV.extend(Phlex::Rails::HelperMacros)
	SGML::State.prepend(Phlex::Rails::SGML::State)

	class HTML
		extend Phlex::Rails::SGML::ClassMethods
		extend Phlex::Rails::HelperMacros

		include Phlex::Rails::SGML

		def format
			:html
		end
	end

	class SVG
		extend Phlex::Rails::SGML::ClassMethods
		extend Phlex::Rails::HelperMacros

		include Phlex::Rails::SGML

		def format
			:svg
		end
	end

	ActiveSupport::SafeBuffer.include(Phlex::SGML::SafeObject)
end
