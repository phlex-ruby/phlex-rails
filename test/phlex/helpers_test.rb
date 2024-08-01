# frozen_string_literal: true

require "test_helper"

class HelpersTest < ActionDispatch::IntegrationTest
	test "missing helper" do
		error = assert_raises(NoMethodError) do
			get "/helpers/missing_helper"
		end

		# There’s a bug in Ruby 3.1 that breaks this assertion.
		unless RUBY_VERSION.start_with?("3.1")
			assert_equal "Try including `Phlex::Rails::Helpers::FormWith` in Helpers::MissingHelperView.", error.message
		end
	end

	test "form with" do
		get "/helpers/form_with"

		assert_response :success
		assert_select "form > h1 + input[type='text'] + h1"
	end

	test "notice" do
		get "/helpers/notice"

		assert_response :success
		assert_select "p", "My Flash Notice"
	end

	test "tag" do
		get "/helpers/tag"

		assert_response :success
		assert_select "div > h1#hello.text-xl", "Hello World"
	end
end
