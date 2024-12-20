# frozen_string_literal: true

module Phlex::Rails::Helpers::SelectTag
	extend Phlex::Rails::HelperMacros

	def select_tag(*args, **kwargs, &block)
		context = @_context
		return if context.fragments && !context.in_target_fragment

		if args[1] == Phlex::Rails::Helpers::OptionsForSelect::Never
			raise ArgumentError.new(<<~MESSAGE
				Figure out how to explain this problem here.
			MESSAGE
		end

		output = if block
			helpers.select_tag(*args, **kwargs) { capture(&block) }
		else
			helpers.select_tag(*args, **kwargs)
		end

		raw(output)
	end
end
