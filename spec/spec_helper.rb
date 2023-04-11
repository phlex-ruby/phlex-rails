# frozen_string_literal: true

require "active_support"
require "phlex/rails"
require "bundler"
Bundler.require :default

Combustion.initialize! :action_controller, :action_view do
	config.autoload_paths << "#{root}/app/views"
	config.autoload_paths << "#{root}/app/views/layouts"
	config.autoload_paths << "#{root}/app/views/components"
end

require "rspec/rails"
require "view_helper"

RSpec.configure do |config|
	config.use_transactional_fixtures = true
end

Zeitwerk::Loader.eager_load_all
