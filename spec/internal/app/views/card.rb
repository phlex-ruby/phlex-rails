# frozen_string_literal: true

module Views
	class Card < Phlex::HTML
		def template(&block)
			article(&block)
		end

		def title(&block)
			h1(class: "card-title", &block)
		end
	end
end
