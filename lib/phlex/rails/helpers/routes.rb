# frozen_string_literal: true

# An adapter for Rails routing helpers, such as <code>article_path</code>.
module Phlex::Rails::Helpers
	module Routes
		# This must be included first because it defines `url_options` rather than delegating it to the view context.
		include Rails.application.routes.url_helpers

		include URLOptions
		include DefaultURLOptions
	end
end
