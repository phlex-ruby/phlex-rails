# frozen_string_literal: true

test "routing helpers" do
	component = Class.new(Phlex::HTML) do
		include Phlex::Rails::Helpers::Routes

		define_method :view_template do
			a(href: posts_path) { "Posts" }
		end
	end

	output = render component

	assert_equal_html output, %(<a href="/posts">Posts</a>)
end
