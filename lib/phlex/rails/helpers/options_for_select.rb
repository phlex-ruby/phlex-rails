# frozen_string_literal: true

module Phlex::Rails::Helpers::OptionsForSelect
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormOptionsHelper.html#method-i-options_for_select)
	def options_for_select(*args, **kwargs, &block)
		output = if block
			view_context.options_for_select(*args, **kwargs) { |*args| capture(*args, &block) }
		else
			view_context.options_for_select(*args, **kwargs)
		end

		raw(output)

		Phlex::Rails::Never.new do
			raise Phlex::ArgumentError.new("You can’t use the return value of options_for_select as an argument to another helper in Phlex. Instead, pass a block and call options_for_select inside that block, since options_for_select outputs HTML directly. Alternatively, you can pass your options value to the select helper, skipping the options_for_select helper altogether.")
		end
	end
end
