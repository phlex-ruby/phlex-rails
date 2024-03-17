# frozen_string_literal: true

class ApplicationLayout < Phlex::HTML
	include Phlex::Rails::Layout

	def view_template(&block)
		doctype

		html do
			head do
				title { yield(:title) }
			end

			body do
				main(&block)
			end
		end
	end
end
