# frozen_string_literal: true

class Helpers::ViewContextRequired < ApplicationView
	include ActionView::Helpers::UrlHelper

	def view_template
		# root_path will fail unless the view context has been set.
		p { root_path }
	end
end
