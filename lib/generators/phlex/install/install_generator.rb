# frozen_string_literal: true

module Phlex::Generators
	class InstallGenerator < ::Rails::Generators::Base
		source_root File.expand_path("templates", __dir__)

		APPLICATION_CONFIGURATION_PATH = Rails.root.join("config/application.rb")
		TAILWIND_CONFIGURATION_PATH = Rails.root.join("tailwind.config.js")
		ADD_EXTRA_AUTOLOAD_PATHS_CODE = <<-ADD_EXTRA_AUTOLOAD_PATHS_CODE
    config.autoload_paths.push(
      "\#{root}/app/views/components",
      "\#{root}/app/views",
      "\#{root}/app/views/layouts"
    )

				ADD_EXTRA_AUTOLOAD_PATHS_CODE

		def autoload_components_layouts_views
			return unless APPLICATION_CONFIGURATION_PATH.exist?

			inject_into_class(
				APPLICATION_CONFIGURATION_PATH,
				"Application",
				ADD_EXTRA_AUTOLOAD_PATHS_CODE,
			)
		end

		def configure_tailwind
			return unless TAILWIND_CONFIGURATION_PATH.exist?

			insert_into_file TAILWIND_CONFIGURATION_PATH, after: "content: [" do
				"\n    './app/views/**/*.rb'," \
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
