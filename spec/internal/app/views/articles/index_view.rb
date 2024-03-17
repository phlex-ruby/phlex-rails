# frozen_string_literal: true

class Articles::IndexView < Phlex::HTML
	include Phlex::Rails::Helpers::ContentFor

	def view_template
		content_for(:title) { "Articles" }
		h1 { "Articles" }
	end
end
