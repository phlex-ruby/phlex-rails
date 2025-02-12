# frozen_string_literal: true

module Phlex::Generators
	class InstallGenerator < ::Rails::Generators::Base
		source_root File.expand_path("templates", __dir__)

		def configure_tailwind
			if tailwind_configuration_path
				insert_into_file tailwind_configuration_path, after: "content: [" do
					"\n		'./app/views/**/*.rb', // Phlex views" \
						"\n		'./app/components/**/*.rb', // Phlex components" \
				end
			end
		end

		def create_initializer
			template "phlex.rb.erb", File.join(destination_root, "config/initializers/phlex.rb")
		end

		def create_base_component
			template "base_component.rb.erb", File.join(destination_root, "app/components/base.rb")
		end

		def create_base_view
			template "base_view.rb.erb", File.join(destination_root, "app/views/base.rb")
		end

		private

		def tailwind_configuration_path
			if tailwind_configuration_files.any?
				Pathname(tailwind_configuration_files.first)
			end
		end

		def tailwind_configuration_files
			Dir.glob(
				[
					"#{destination_root}/tailwind.config.js",
					"#{destination_root}/app/**/tailwind.config.js",
					"#{destination_root}/config/**/tailwind.config.js",
				]
			)
		end
	end
end
