# frozen_string_literal: true

class ApplicationLayout < ApplicationView
	include Phlex::Rails::Layout

	def initialize(color:)
		@color = color
	end

	def view_template(&block)
		doctype

		html do
			head do
				title { yield(:title) }
				meta name: "viewport", content: "width=device-width,initial-scale=1"
				csp_meta_tag
				csrf_meta_tags
				stylesheet_link_tag "application", data: { turbo_track: "reload" }
			end

			body(class: "bg-blue") do
				main(&block)
			end
		end
	end
end
