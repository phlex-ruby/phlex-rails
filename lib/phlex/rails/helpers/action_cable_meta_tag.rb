# frozen_string_literal: true

module Phlex::Rails::Helpers::ActionCableMetaTag
	def action_cable_meta_tag
		unsafe_raw helpers.action_cable_meta_tag
	end
end
