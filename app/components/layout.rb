# frozen_string_literal: true

class Components::Layout < Phlex::HTML
	include Phlex::Rails::Layout

	def view_template
		html do
			body do
				header do
					yield(:header)
				end

				main do
					yield
				end
			end
		end
	end
end
