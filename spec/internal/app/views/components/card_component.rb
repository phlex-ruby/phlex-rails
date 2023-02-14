# frozen_string_literal: true

class CardComponent < Phlex::HTML
	def template(&block)
		article(&block)
	end

	def title(&block)
		h1(class: "card-title", &block)
	end
end
