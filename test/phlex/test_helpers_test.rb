# frozen_string_literal: true

require "test_helper"

class TestHelpersTest < ActiveSupport::TestCase
	include Phlex::Testing::Capybara

	class PartialFromPhlex < ApplicationView
		def view_template
			render partial("rendering/partial") do
				h1(id: "phlex") { "Partial from Phlex" }
			end
		end
	end

	test "renders a card" do
		render PartialFromPhlex.new

		assert_selector "#erb>h1#phlex", text: "Partial from Phlex"
	end
end
