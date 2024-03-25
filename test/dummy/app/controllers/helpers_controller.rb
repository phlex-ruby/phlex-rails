class HelpersController < ApplicationController
	layout false

	def form_with
		render Helpers::FormWithView.new
	end

	def tag
		render Helpers::TagView.new
	end

	def missing_helper
		render Helpers::MissingHelperView.new
	end
end
