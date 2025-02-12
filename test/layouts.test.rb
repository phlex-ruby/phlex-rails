# frozen_string_literal: true

expected_output = <<~HTML
	<header>
		<h1>Content for header</h1>
	</header>
	<main>
		<h1>Hello</h1>
	</main>
HTML

test "phlex layout passed as a class" do
	output = render(template: "hello", layout: Components::Layout)

	assert_equivalent_html output, expected_output
end

test "phlex layout passed as an instance" do
	output = render(template: "hello", layout: Components::Layout.new)

	assert_equivalent_html output, expected_output
end
