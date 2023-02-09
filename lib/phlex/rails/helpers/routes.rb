# frozen_string_literal: true

module Phlex::Rails::Helpers
	module Routes
		include DefaultURLOptions
		include Rails.application.routes.url_helpers
	end
end
