# frozen_string_literal: true

module Views
	module Helpers
		class FormWith < Phlex::HTML
			include Phlex::Rails::Helpers::FormWith

			def template
				form_with do |f|
					f.text_field :name
				end
			end
		end
	end
end
