# frozen_string_literal: true

# An adapter for Rails routing helpers, such as <code>article_path</code>.
module Phlex::Rails::Helpers
	module Routes
		include DefaultURLOptions
		include Rails.application.routes.url_helpers
	end
end
