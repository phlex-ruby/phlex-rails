# frozen_string_literal: true

module Phlex::Generators
	class ComponentGenerator < ::Rails::Generators::NamedBase
		source_root File.expand_path("templates", __dir__)

		def create_view
			@path = File.join("app/components", class_path, "#{file_name}.rb")
			template "component.rb.erb", @path
		end
	end
end
