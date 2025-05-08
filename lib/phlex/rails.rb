# frozen_string_literal: true

require "phlex"

module Phlex
	module Rails
		class HelpersCalledBeforeRenderError < StandardError; end

		autoload :Buffered, "phlex/rails/buffered"

		autoload :CSV, "phlex/rails/csv"

		autoload :SVG, "phlex/rails/svg"
		autoload :HTML, "phlex/rails/html"
		autoload :SGML, "phlex/rails/sgml"

		autoload :Helpers, "phlex/rails/helpers"
		autoload :HelperMacros, "phlex/rails/helper_macros"

		autoload :Layout, "phlex/rails/layout"
		autoload :Partial, "phlex/rails/partial"
		autoload :Streaming, "phlex/rails/streaming"

		autoload :Builder, "phlex/rails/builder"

		autoload :OptionsOutput, "phlex/rails/options_output"
	end

	CSV.prepend(Phlex::Rails::CSV)
	CSV.extend(Phlex::Rails::HelperMacros)

	HTML.include(Phlex::Rails::HTML)
	SVG.include(Phlex::Rails::SVG)

	SGML::State.prepend(Phlex::Rails::SGML::State)

	ActiveSupport::SafeBuffer.include(Phlex::SGML::SafeObject)
end
