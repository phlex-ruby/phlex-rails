# frozen_string_literal: true

module Phlex::Rails::Helpers::ImageTag
	def image_tag(...)
		unsafe_raw helpers.image_tag(...)
	end
end
