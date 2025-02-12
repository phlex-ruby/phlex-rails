# frozen_string_literal: true

module Phlex::Generators
	class ComponentGenerator < ::Rails::Generators::NamedBase
		source_root File.expand_path("templates", __dir__)

		def create_component
			template "component.rb.erb", File.join(
				destination_root,
				"app/components",
				class_path,
				"#{file_name}.rb"
			)
		end
	end
end
