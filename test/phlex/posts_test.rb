require "test_helper"

class PostsTest < ActionDispatch::IntegrationTest
	test "posts" do
		get "/"

		assert_response :success
	end
end