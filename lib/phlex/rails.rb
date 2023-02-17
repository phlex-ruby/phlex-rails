# frozen_string_literal: true

require "phlex"
require "phlex/rails/engine"

module Phlex
	module Rails
		Loader = Zeitwerk::Loader.new.tap do |loader|
			loader.push_dir("#{__dir__}/rails", namespace: Phlex::Rails)
			loader.inflector = Zeitwerk::GemInflector.new(__FILE__)
			loader.inflector.inflect(
				"html" => "HTML",
				"sgml" => "SGML"
			)
			loader.setup
		end
	end

	class SGML
		extend Phlex::Rails::SGML::ClassMethods
		extend Phlex::Rails::SGML::AppendMethodAddedWarning

		prepend Phlex::Rails::SGML::Overrides
	end

	class HTML
		extend Phlex::Rails::HTML::Format
		include Phlex::Rails::HTML::Format
	end
end
