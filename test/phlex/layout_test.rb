# frozen_string_literal: true

require "test_helper"

class LayoutTest < ActionDispatch::IntegrationTest
	test "with erb view" do
		get "/layout/with_erb_view"
		assert_response :success
		assert_select "h1", "ERB View"
	end
end
