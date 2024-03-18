# frozen_string_literal: true

module Phlex::Rails::Helpers::StripTags
	extend Phlex::Rails::HelperMacros

	# @!method strip_tags(...)
	register_value_helper :strip_tags
end
