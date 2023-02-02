# frozen_string_literal: true

class HelpersController < ActionController::Base
	def form_with
		render Views::Helpers::FormWith.new
	end
end
