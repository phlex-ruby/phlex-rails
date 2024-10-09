# frozen_string_literal: true

require "test_helper"

class RenderTest < ActionDispatch::IntegrationTest
	test "rendering partial from Phlex view" do
		get "/rendering/partial_from_phlex"
		assert_response :success
		assert_select "#erb>h1#phlex", "Partial from Phlex"
	end

	test "rendering view_component component from Phlex view" do
		get "/rendering/view_component_from_phlex"
		assert_response :success
		assert_select "#phlex", "Rendered from Phlex"
	end
end
