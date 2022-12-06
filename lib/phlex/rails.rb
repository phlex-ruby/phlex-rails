# frozen_string_literal: true

require "phlex"
require "phlex/rails/engine"

module Phlex::Rails
	Loader = Zeitwerk::Loader.new.tap do |loader|
		loader.push_dir("#{__dir__}/rails", namespace: Phlex::Rails)
		loader.inflector = Zeitwerk::GemInflector.new(__FILE__)
		loader.setup
	end

	Phlex::HTML.prepend(Phlex::Rails::Renderable)
end
