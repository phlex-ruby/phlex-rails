# frozen_string_literal: true

class Components::Cache < Phlex::HTML
	def initialize(text)
		@text = text
	end

	def cache_store = Rails.cache

	def view_template
		cache do
			h1 { @text }
		end
	end
end
