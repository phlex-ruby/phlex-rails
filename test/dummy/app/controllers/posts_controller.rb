class PostsController < ApplicationController
	def index
		render Posts::IndexView.new
	end
end
