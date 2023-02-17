# frozen_string_literal: true

module Phlex::Rails::Helpers::TurboStream
	extend Phlex::Rails::HelperMacros

	def turbo_stream(...)
		Phlex::Rails::Buffered.new(
			helpers.turbo_stream(...),
			view: self
		)
	end
end
