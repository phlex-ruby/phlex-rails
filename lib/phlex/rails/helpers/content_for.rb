# frozen_string_literal: true

module Phlex::Rails::Helpers::ContentFor
	def content_for(slot, &block)
		helpers.content_for(slot, capture(&block))
	end
end
