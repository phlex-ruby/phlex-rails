# frozen_string_literal: true

class ExamplesController < ActionController::Base
	def form_with
		render Views::Examples::FormWith.new
	end

	def view_component; end
	def templateless_view_component; end
	def tabs; end
	def card; end
end
