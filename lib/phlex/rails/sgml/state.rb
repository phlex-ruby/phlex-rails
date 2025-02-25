# frozen_string_literal: true

module Phlex::Rails::SGML::State
	def buffer
		@user_context[:capture_context]&.output_buffer&.raw_buffer || super
	end
end
