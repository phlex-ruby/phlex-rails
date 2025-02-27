# frozen_string_literal: true

require "phlex"

module Phlex
	module Rails
		class HelpersCalledBeforeRenderError < StandardError; end

		autoload :Buffered, "phlex/rails/buffered"
		autoload :Decorator, "phlex/rails/decorator"

		autoload :FormBuilder, "phlex/rails/form_builder"
		autoload :LabelBuilder, "phlex/rails/label_builder"
		autoload :CheckboxBuilder, "phlex/rails/checkbox_builder"
		autoload :RadioButtonBuilder, "phlex/rails/radio_button_builder"

		autoload :CSV, "phlex/rails/csv"

		autoload :SVG, "phlex/rails/svg"
		autoload :HTML, "phlex/rails/html"
		autoload :SGML, "phlex/rails/sgml"

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
