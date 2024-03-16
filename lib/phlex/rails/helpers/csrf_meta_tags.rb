# frozen_string_literal: true

module Phlex::Rails::Helpers::CSRFMetaTags
	extend Phlex::Rails::HelperMacros

	# @!method csrf_meta_tags(...)
	# 	@return [nil]
	define_output_helper :csrf_meta_tags
end
