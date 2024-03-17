# frozen_string_literal: true

module Helpers
	class FormWithView < Phlex::HTML
		include Phlex::Rails::Helpers::FormWith

		def view_template
			form_with do |f|
				f.text_field :name
			end
		end
	end
end
