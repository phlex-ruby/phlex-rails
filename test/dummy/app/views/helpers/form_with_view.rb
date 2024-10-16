# frozen_string_literal: true

class Views::Helpers::FormWithView < Views::Base
	include Phlex::Rails::Helpers::FormWith

	def view_template
		form_with do |f|
			h1 { "Before" }
			f.text_field :name
			h1 { "After" }
		end
	end
end
