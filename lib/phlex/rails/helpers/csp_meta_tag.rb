# frozen_string_literal: true

module Phlex::Rails::Helpers::CSPMetaTag
	def csp_meta_tag(...)
		unsafe_raw helpers.csp_meta_tag(...)
	end
end
