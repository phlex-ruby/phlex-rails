# frozen_string_literal: true

class TemplatelessComponent < ViewComponent::Base
	def call
		render CardComponent.new do |card|
			card.title { "Hello" }
			card.plain("Content")
			"Should not appear in component"
		end
	end
end
