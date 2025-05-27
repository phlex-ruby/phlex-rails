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
