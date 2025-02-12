# frozen_string_literal: true

test "rendering a view component" do
	component = Class.new(Phlex::HTML) do
		define_method :view_template do
			render BlogComponent.new(date: "Yesterday") do |blog|
				blog.with_header do
					plain "Hello"
					whitespace
					strong { "World" }
				end

				blog.with_post do
					p { "This is a post." }
				end
			end
		end
	end

	output = render component.new

	assert_equivalent_html output, <<~HTML
		<h1>
			Hello
			<strong>
				World
			</strong>
		</h1>
		<time>
			Yesterday
		</time>
		<section>
			<article>
				<p>
					This is a post.
			</article>
		</section>
	HTML
end
