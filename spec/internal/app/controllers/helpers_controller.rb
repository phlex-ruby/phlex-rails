# frozen_string_literal: true

class HelpersController < ActionController::Base
	def form_with
		render Helpers::FormWithView.new
	end
end
