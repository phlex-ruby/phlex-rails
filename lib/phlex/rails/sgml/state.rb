# frozen_string_literal: true

module Phlex::Rails::SGML::State
	def buffer
		@user_context[:capture_context]&.output_buffer&.raw_buffer || super
	end

	def around_capture
		original_capturing = @capturing
		original_fragments = @fragments

		begin
			@capturing = true
			yield
		ensure
			@capturing = original_capturing
			@fragments = original_fragments
		end
	end
end
