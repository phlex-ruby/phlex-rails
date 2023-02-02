# frozen_string_literal: true

require "spec_helper"
require "phlex/testing/capybara"
require "phlex/testing/rails/view_helper"

module ViewHelper
	include Phlex::Testing::Rails::ViewHelper
	include Phlex::Testing::Capybara::ViewHelper
end
