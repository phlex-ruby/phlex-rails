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

# Provide an RSpec-compliant module to use the MiniTest-compliant `Rails::Generators::TestCase` class
# adapted from: https://github.com/stevehodgkiss/generator_spec
module GeneratorTestCase
  def self.included(base)
    require "rails/generators/test_case"

    test_case = Class.new(Rails::Generators::TestCase) do
      def fake_test_case; end
      def add_assertion; end
    end
    test_case.tests base.described_class
    instance = test_case.new(:fake_test_case)

    base.class_variable_set :@@test_case, test_case
    base.class_variable_set :@@test_case_instance, instance

    base.extend(ClassMethods)
  end

  module ClassMethods
    def tests(klass)
      self.class_variable_get(:@@test_case).generator_class = klass
    end

    def arguments(array)
      self.class_variable_get(:@@test_case).default_arguments = array
    end

    def destination(path)
      self.class_variable_get(:@@test_case).destination_root = path
    end
  end

  def method_missing(method_sym, *arguments, &block)
    self.class.class_variable_get(:@@test_case_instance).method(method_sym).call(*arguments, &block)
  end

  def respond_to?(method_sym, include_private = false)
    if self.class.instance_variable_get(:@@test_case_instance).respond_to?(method_sym)
      true
    else
      super
    end
  end
end

RSpec.configure do |config|
	config.use_transactional_fixtures = true

	config.include GeneratorTestCase, type: :generator
end
