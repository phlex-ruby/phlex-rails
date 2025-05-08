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
			raise Phlex::ArgumentError.new("You can’t use options_for_select as an argument for a select helper in Phlex. Instead, pass a block and call options_for_select inside that block.")
		end
	end
end
