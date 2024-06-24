# frozen_string_literal: true

module Phlex::Generators
	class InstallGenerator < ::Rails::Generators::Base
		source_root File.expand_path("templates", __dir__)

    IGNORED_TAILWIND_CONFIGURATION_LOOKUP_DIRECTORIES = %w[
      .git
      .github
      .ruby-lsp
      bin
      coverage
      db
      docs
      log
      node_modules
      public
      spec
      storage
      test
      tmp
      vendor
    ].freeze

		APPLICATION_CONFIGURATION_PATH = Rails.root.join("config/application.rb")

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
        Pathname.new(filtered_tailwind_configuration_files.first)
    end

    def filtered_tailwind_configuration_files
      Dir.glob("#{Rails.root}/**/tailwind.config.js").grep_v(ignored_directories_regexp)
    end

    def ignored_directories_regexp
      Regexp.new(IGNORED_TAILWIND_CONFIGURATION_LOOKUP_DIRECTORIES.join('|'))
    end
	end
end
