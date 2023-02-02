# frozen_string_literal: true

module Phlex::Rails::Helpers::CSRFMetaTags
	def csrf_meta_tags
		unsafe_raw helpers.csrf_meta_tags
	end
end
