# frozen_string_literal: true

class Posts::IndexView < Views::Base
	def view_template
		h1 { "Posts::Index" }
		aside { "Find me in app/views/posts/index_view.rb" }
	end
end
