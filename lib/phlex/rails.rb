# frozen_string_literal: true

require "phlex"
require "phlex/rails/engine"

module Phlex
	module Rails
		autoload :Buffered, "phlex/rails/buffered"
		autoload :BufferedCheckboxBuilder, "phlex/rails/buffered_checkbox_builder"
		autoload :BufferedFormBuilder, "phlex/rails/buffered_form_builder"
		autoload :BufferedLabelBuilder, "phlex/rails/buffered_label_builder"
		autoload :BufferedRadioButtonBuilder, "phlex/rails/buffered_radio_button_builder"
		autoload :CSV, "phlex/rails/csv"
		autoload :HTML, "phlex/rails/html"
		autoload :HelperMacros, "phlex/rails/helper_macros"
		autoload :Helpers, "phlex/rails/helpers"
		autoload :Layout, "phlex/rails/layout"
		autoload :SGML, "phlex/rails/sgml"
		autoload :UnbufferedOverrides, "phlex/rails/unbuffered_overrides"
		autoload :Streaming, "phlex/rails/streaming"
		autoload :FragmentFinder, "phlex/rails/fragment_finder"
	end

	CSV.extend Phlex::Rails::HelperMacros
	CSV.prepend Phlex::Rails::CSV::Overrides

	SGML.extend Phlex::Rails::SGML::ClassMethods
	SGML.extend Phlex::Rails::HelperMacros
	SGML.prepend Phlex::Rails::SGML::Overrides

	HTML.extend Phlex::Rails::HTML::Format
	HTML.include Phlex::Rails::HTML::Format
	HTML.include Phlex::Rails::HTML::MethodMissing

	Unbuffered.prepend Phlex::Rails::UnbufferedOverrides
end
