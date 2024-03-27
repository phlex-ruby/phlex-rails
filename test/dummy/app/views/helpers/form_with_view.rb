# frozen_string_literal: true

class Helpers::FormWithView < ApplicationView
	include Phlex::Rails::Helpers::FormWith

	def view_template
		form_with do |f|
			h1 { "Before" }
			f.text_field :name
			h1 { "After" }
		end
	end
end
