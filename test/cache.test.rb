# frozen_string_literal: true

test "basic caching test" do
	assert_equal_html render(Components::Cache.new("Original")), <<~HTML.strip
		<h1>Original</h1>
	HTML

	assert_equal_html render(Components::Cache.new("Something else")), <<~HTML.strip
		<h1>Original</h1>
	HTML
end
