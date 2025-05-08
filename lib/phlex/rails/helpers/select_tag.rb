# frozen_string_literal: true

module Phlex::Rails::Helpers::SelectTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-select_tag)
	def select_tag(name, options = nil, *args, **kwargs, &block)
		if Phlex::Rails::OptionsOutput === options
			state = @_state
			buffer = state.buffer
			value = options.value
			bytesize = value.bytesize
			offset = options.offset

			if state.output_buffer.bytesize == options.output_buffer_bytesize
				if buffer.byteslice(offset, bytesize) == value
					buffer.slice!(offset, bytesize)
					options = value
				else
					raise "Something went terribly wrong with buffering."
				end
			else
				raise Phlex::ArgumentError.new("It looks like you flushed Phlex buffer in the middle of rendering a select tag. If you need to do this, you’ll need to use the block syntax rather than passing the options as an argument to the select tag.")
			end
		end

		output = if block
			view_context.select_tag(name, options, *args, **kwargs) { capture(&block) }
		else
			view_context.select_tag(name, options, *args, **kwargs)
		end

		raw(output)
	end
end
