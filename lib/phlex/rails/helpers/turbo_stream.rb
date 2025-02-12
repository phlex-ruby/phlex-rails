# frozen_string_literal: true

# An adapter for the turbo-rails <code>turbo_stream</code> helper.
# @see https://github.com/hotwired/turbo-rails
module Phlex::Rails::Helpers::TurboStream
	extend Phlex::Rails::HelperMacros

	def turbo_stream(...)
		Phlex::Rails::Buffered.new(
			view_context.turbo_stream(...),
			component: self,
		)
	end
end
