module Phlex::Rails::Helpers::FormWith
	extend Phlex::Rails::HelperMacros

	# @!method form_with(...)
	# 	@yield [builder]
	# 	@yieldparam builder [Phlex::Rails::BufferedFormBuilder]
	define_builder_yielding_helper :form_with, Phlex::Rails::BufferedFormBuilder
end
