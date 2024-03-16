module Phlex::Rails::Helpers::FieldSetTag
	extend Phlex::Rails::HelperMacros

	# @!method field_set_tag(...)
	# 	@return [nil]
	define_output_helper_with_capture_block :field_set_tag
end
