# frozen_string_literal: true

require "phlex"

module Phlex
	module Rails
		class HelpersCalledBeforeRenderError < StandardError; end

		Loader = Zeitwerk::Loader.for_gem_extension(Phlex).tap do |loader|
			loader.ignore("#{__dir__}/ruby_lsp")
			loader.inflector = Zeitwerk::NullInflector.new
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
