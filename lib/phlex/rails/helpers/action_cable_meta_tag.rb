# frozen_string_literal: true

module Phlex::Rails::Helpers::ActionCableMetaTag
	extend Phlex::Rails::HelperMacros

	# Outputs an “action-cable-url” meta tag with the value of the URL specified in your configuration. Ensure this is above your JavaScript tag:
	#
	# [Rails Docs](https://api.rubyonrails.org/classes/ActionCable/Helpers/ActionCableHelper.html#method-i-action_cable_meta_tag)
	register_output_helper def action_cable_meta_tag(...) = nil
end
