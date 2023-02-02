# frozen_string_literal: true

module Phlex::Rails::Helpers::FaviconLinkTag
	def favicon_link_tag(...)
		unsafe_raw helpers.favicon_link_tag(...)
	end
end
