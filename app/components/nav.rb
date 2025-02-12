# frozen_string_literal: true

class Components::Nav < Phlex::HTML
	def view_template(&)
		nav(class: "special-nav", &)
	end

	def item(href, &)
		a(class: "special-nav-item", href:, &)
	end

	def divider
		span(class: "special-nav-divider")
	end
end
