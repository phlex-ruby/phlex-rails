# frozen_string_literal: true

require "phlex/rails"
require "phlex/testing"

module Phlex::Testing::RailsContext
	def view_context
		controller.view_context
	end

	def controller
		@controller ||= ActionView::TestCase::TestController.new
	end
end

Phlex::Testing::SGML.prepend(
	Phlex::Testing::RailsContext,
)
