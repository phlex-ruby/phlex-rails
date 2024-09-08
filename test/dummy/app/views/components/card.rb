# frozen_string_literal: true

class Card < ApplicationComponent
	def view_template(&)
		article(class: "card", &)
	end

	def title(&)
		h1(class: "title", &)
	end
end
