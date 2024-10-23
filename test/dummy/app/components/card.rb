# frozen_string_literal: true

class Components::Card < Components::Base
	def view_template(&)
		article(class: "card", &)
	end

	def title(&)
		h1(class: "title", &)
	end
end
