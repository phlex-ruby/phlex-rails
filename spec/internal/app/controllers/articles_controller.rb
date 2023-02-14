# frozen_string_literal: true

class ArticlesController < ActionController::Base
	layout -> { ApplicationLayout }

	def index
		render Articles::IndexView
	end

	def show; end
end
