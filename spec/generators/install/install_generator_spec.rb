# frozen_string_literal: true

require "spec_helper"
require "rails/generators"
require_relative "../../../lib/generators/phlex/install/install_generator"

RSpec.describe Phlex::Generators::InstallGenerator, type: :generator do
  destination File.expand_path("../../tmp", __FILE__)

  before(:all) do
    prepare_destination
    run_generator "--force"
  end

  it "creates a test initializer" do
    assert_file "config/initializers/test.rb", "# Initializer"
  end
end
