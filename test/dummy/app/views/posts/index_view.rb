# frozen_string_literal: true

class Posts::IndexView < ApplicationView
  def view_template
    h1 { "Posts::Index" }
    p { "Find me in app/views/posts/index_view.rb" }
  end
end
