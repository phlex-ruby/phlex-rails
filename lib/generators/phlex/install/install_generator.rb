# frozen_string_literal: true

module Phlex::Generators
	class InstallGenerator < ::Rails::Generators::Base
		source_root File.expand_path("templates", __dir__)

		APPLICATION_CONFIGURATION_PATH = Rails.root.join("config/application.rb")
		TAILWIND_CONFIGURATION_PATH = Rails.root.join("config/tailwind.config.js")

		def autoload_components
			return unless APPLICATION_CONFIGURATION_PATH.exist?

			inject_into_class(
				APPLICATION_CONFIGURATION_PATH,
				"Application",
				%(    config.autoload_paths << "\#{root}/app/views/components"\n)
			)
		end

		def autoload_layouts
			return unless APPLICATION_CONFIGURATION_PATH.exist?

			inject_into_class(
				APPLICATION_CONFIGURATION_PATH,
				"Application",
				%(    config.autoload_paths << "\#{root}/app/views/layouts"\n)
			)
		end

		def autoload_views
			return unless APPLICATION_CONFIGURATION_PATH.exist?

			inject_into_class(
				APPLICATION_CONFIGURATION_PATH,
				"Application",
				%(    config.autoload_paths << "\#{root}/app/views"\n)
			)
		end

		def configure_tailwind
			return unless TAILWIND_CONFIGURATION_PATH.exist?

			insert_into_file TAILWIND_CONFIGURATION_PATH, after: "content: [" do
				"\n    './app/views/**/*.rb'," \
					"\n    './app/components/**/*rb',"
			end
		end

		def create_application_component
			template "application_component.rb", Rails.root.join("app/views/components/application_component.rb")
		end

		def create_application_layout
			template "application_layout.rb", Rails.root.join("app/views/layouts/application_layout.rb")
		end

		def create_application_view
			template "application_view.rb", Rails.root.join("app/views/application_view.rb")
		end
	end
end
