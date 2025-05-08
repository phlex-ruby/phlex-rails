# frozen_string_literal: true

class Phlex::Rails::OptionsOutput
	def initialize(value, offset, output_buffer_bytesize)
		@value = value
		@offset = offset
		@output_buffer_bytesize = output_buffer_bytesize
	end

	attr_reader :value, :offset, :output_buffer_bytesize
end
