# frozen_string_literal: true

module Phlex::Rails::SGML::State
	def buffer
		@user_context[:capture_context]&.output_buffer&.raw_buffer || super
	end

	def capture
		if (capture_context = @user_context[:capture_context])
			original_capturing = @capturing
			original_fragments = @fragments

			capture_context.capture do
				@capturing = true
				@fragments = nil
				yield
			ensure
				@capturing = original_capturing
				@fragments = original_fragments
			end || ""
		else
			super
		end
	end
end
