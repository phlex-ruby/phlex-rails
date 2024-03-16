module Phlex::Rails::Helpers::Fields
	extend Phlex::Rails::HelperMacros

	# @!method fields(...)
	# 	@yield [builder]
	# 	@yieldparam builder [Phlex::Rails::BufferedFormBuilder]
	define_builder_yielding_helper :fields, Phlex::Rails::BufferedFormBuilder
end
