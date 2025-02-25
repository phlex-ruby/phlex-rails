# frozen_string_literal: true

require "phlex"

module Phlex
	module Rails
		class HelpersCalledBeforeRenderError < StandardError; end

		autoload :Buffered, "phlex/rails/buffered"
		autoload :Unbuffered, "phlex/rails/unbuffered"

		autoload :BufferedCheckboxBuilder, "phlex/rails/buffered_checkbox_builder"
		autoload :BufferedFormBuilder, "phlex/rails/buffered_form_builder"
		autoload :BufferedLabelBuilder, "phlex/rails/buffered_label_builder"
		autoload :BufferedRadioButtonBuilder, "phlex/rails/buffered_radio_button_builder"

		autoload :SGML, "phlex/rails/sgml"
		autoload :HTML, "phlex/rails/html"
		autoload :SVG, "phlex/rails/svg"

		autoload :CSV, "phlex/rails/csv"

		autoload :Helpers, "phlex/rails/helpers"
		autoload :HelperMacros, "phlex/rails/helper_macros"

		autoload :Layout, "phlex/rails/layout"
		autoload :Partial, "phlex/rails/partial"
		autoload :Streaming, "phlex/rails/streaming"
	end

	CSV.include(Phlex::Rails::CSV)
	CSV.extend(Phlex::Rails::HelperMacros)

	HTML.include(Phlex::Rails::HTML)
	SVG.include(Phlex::Rails::SVG)

	SGML::State.prepend(Phlex::Rails::SGML::State)

	ActiveSupport::SafeBuffer.include(Phlex::SGML::SafeObject)
end
