# frozen_string_literal: true

module Phlex::Rails::Helpers::ActionCableMetaTag
	extend Phlex::Rails::HelperMacros

	# @!method action_cable_meta_tag
	# 	Outputs an "action-cable-url" meta tag with the value of the URL specified in your configuration. Ensure this is above your JavaScript tag:
	# 	@see https://api.rubyonrails.org/classes/ActionCable/Helpers/ActionCableHelper.html#method-i-action_cable_meta_tag
	# 	@return [nil]
	register_output_helper :action_cable_meta_tag
end
