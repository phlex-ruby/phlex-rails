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
		autoload :FragmentFinder, "phlex/rails/fragment_finder"
		autoload :HTML, "phlex/rails/html"
		autoload :HelperFinder, "phlex/rails/helper_finder"
		autoload :HelperMacros, "phlex/rails/helper_macros"
		autoload :Helpers, "phlex/rails/helpers"
		autoload :Layout, "phlex/rails/layout"
		autoload :Partial, "phlex/rails/partial"
		autoload :SGML, "phlex/rails/sgml"
		autoload :Streaming, "phlex/rails/streaming"
		autoload :Unbuffered, "phlex/rails/unbuffered"
	end

	CSV.extend Phlex::Rails::HelperMacros
	CSV.prepend Phlex::Rails::CSV::Overrides

	SGML.extend Phlex::Rails::SGML::ClassMethods
	SGML.extend Phlex::Rails::HelperMacros
	SGML.prepend Phlex::Rails::SGML::Overrides
	SGML.include Phlex::Rails::HelperFinder

	HTML.extend Phlex::Rails::HTML::Format
	HTML.include Phlex::Rails::HTML::Format

	ActiveSupport::SafeBuffer.include(Phlex::SGML::SafeObject)
end
