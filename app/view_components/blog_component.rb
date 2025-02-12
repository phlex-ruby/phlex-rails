# frozen_string_literal: true

class BlogComponent < ViewComponent::Base
	def initialize(date:)
		@date = date
	end

	renders_one :header
	renders_many :posts
end
