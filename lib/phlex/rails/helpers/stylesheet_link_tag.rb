# frozen_string_literal: true

module Phlex::Rails::Helpers::StylesheetLinkTag
	def stylesheet_link_tag(...)
		unsafe_raw helpers.stylesheet_link_tag(...)
	end
end
