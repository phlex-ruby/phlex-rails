# frozen_string_literal: true

class Articles::IndexView < Phlex::HTML
	include Phlex::Rails::Helpers::ContentFor

	def template
		content_for(:title) { "Articles" }
		h1 { "Articles" }
	end
end
