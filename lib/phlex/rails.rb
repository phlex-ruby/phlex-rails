# frozen_string_literal: true

require "phlex"
require "phlex/rails/engine"

module Phlex::Rails
	Loader = Zeitwerk::Loader.new.tap do |loader|
		loader.push_dir("#{__dir__}/rails", namespace: Phlex::Rails)
		loader.inflector = Zeitwerk::GemInflector.new(__FILE__)
		loader.setup
	end

	module AppendMethodAddedWarning
		def method_added(name)
			if name == :append || name == :safe_append
				raise Phlex::NameError, "You shouldn't redefine the #{name} method as it's required for safe HTML output."
			end

			super
		end
	end

	Phlex::HTML.prepend(Phlex::Rails::Renderable)
	Phlex::HTML.extend(Phlex::Rails::AppendMethodAddedWarning)
end
