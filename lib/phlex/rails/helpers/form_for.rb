module Phlex::Rails::Helpers::FormFor
	extend Phlex::Rails::HelperMacros

	# @!method form_for(...)
	# 	@yield [builder]
	# 	@yieldparam builder [Phlex::Rails::BufferedFormBuilder]
	define_builder_yielding_helper :form_for, Phlex::Rails::BufferedFormBuilder
end
