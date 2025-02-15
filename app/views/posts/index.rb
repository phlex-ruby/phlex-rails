# frozen_string_literal: true

module Views
	module Posts
		class Index < Phlex::HTML
			def view_template
				div(id: "posts") do
					fragment("post_1") do
						div(id: "post_1") do
							h1 { "Post 1" }
							p { "This is the first post." }
						end
					end
					fragment("post_2") do
						div(id: "post_2") do
							h1 { "Post 2" }
							p { "This is the second post." }
						end
					end
				end
			end
		end
	end
end
