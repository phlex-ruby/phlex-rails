# frozen_string_literal: true

module Phlex::Rails::Helpers::OptionsForSelect
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormOptionsHelper.html#method-i-options_for_select)
	def options_for_select(...)
		output = view_context.options_for_select(...)
		state = @_state
		buffer = state.buffer
		offset = buffer.bytesize
		output_buffer_size = state.output_buffer.bytesize

		raw(output)

		Phlex::Rails::OptionsOutput.new(output, offset, output_buffer_size)
	end
end
