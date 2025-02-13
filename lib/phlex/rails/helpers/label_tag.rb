# frozen_string_literal: true

module Phlex::Rails::Helpers::LabelTag
	extend Phlex::Rails::HelperMacros

	# Creates a label element. Accepts a block.
	#
	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-label_tag)
	register_output_helper def label_tag(...) = nil
end
