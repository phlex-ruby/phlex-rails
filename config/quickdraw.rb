# frozen_string_literal: true

require "bootsnap/setup"

require "rails"
require "action_controller/railtie"
require "action_view/railtie"

require "phlex/rails"
require "view_component"

class App < Rails::Application
	config.eager_load = false
	config.hosts.clear
	config.active_support.to_time_preserves_timezone = :zone
	config.autoload_paths << "#{root}/app/view_components"
	config.secret_key_base = "secret-key"

	routes.append do
		resources :posts
	end
end

App.initialize!

class Quickdraw::Test
	def render(...)
		view_context.render(...)
	end

	def view_context
		controller.view_context
	end

	def controller
		@controller ||= ActionView::TestCase::TestController.new
	end
end
