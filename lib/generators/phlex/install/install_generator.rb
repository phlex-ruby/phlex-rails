# frozen_string_literal: true

module Phlex::Generators
	class InstallGenerator < ::Rails::Generators::Base
		source_root File.expand_path("templates", __dir__)

		APPLICATION_CONFIGURATION_PATH = Rails.root.join("config/application.rb")

		def configure_tailwind
			if tailwind_configuration_path
				insert_into_file tailwind_configuration_path, after: "content: [" do
					"\n    './app/views/**/*.rb', // Phlex views" \
					"\n    './app/components/**/*.rb', // Phlex components" \
				end
			end
		end

		def create_application_component
			template "base_component.rb.erb", Rails.root.join("app/components/base.rb")
		end

		def create_application_view
			template "base_view.rb.erb", Rails.root.join("app/views/base.rb")
		end

		def create_hello_component
			template "hello_component.rb.erb", Rails.root.join("app/components/hello.rb")
		end

		def create_initializer
			template "phlex.rb.erb", Rails.root.join("config/initializers/phlex.rb")
		end

		private

		def tailwind_configuration_path
			if tailwind_configuration_files.any?
				Pathname.new(
					tailwind_configuration_files.first,
				)
			end
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
