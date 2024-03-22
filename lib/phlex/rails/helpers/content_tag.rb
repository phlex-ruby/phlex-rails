# frozen_string_literal: true

module Phlex::Rails::Helpers::ContentTag
	extend Phlex::Rails::HelperMacros

	# @!method content_tag(...)
	# 	@return [nil]
	register_output_helper :content_tag
end
