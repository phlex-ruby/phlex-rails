# frozen_string_literal: true

module Phlex::Generators
	class InstallGenerator < ::Rails::Generators::Base
		source_root File.expand_path("templates", __dir__)

		APPLICATION_CONFIGURATION_PATH = Rails.root.join("config/application.rb")

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
			return unless tailwind_configuration_path.exist?

			insert_into_file tailwind_configuration_path, after: "content: [" do
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

		private

		def tailwind_configuration_path
			@_tailwind_configuration_path ||=
				Pathname.new(tailwind_configuration_files.first)
		end

		def tailwind_configuration_files
			Dir.glob(
				[
					"#{Rails.root}/tailwind.config.js",
					"#{Rails.root}/app/**/tailwind.config.js",
					"#{Rails.root}/config/**/tailwind.config.js",
				],
			)
		end
	end
end
