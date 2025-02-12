# frozen_string_literal: true

module Phlex::Generators
	class ViewGenerator < ::Rails::Generators::NamedBase
		source_root File.expand_path("templates", __dir__)

		def create_view
			template "view.rb.erb", File.join(
				destination_root,
				"app/views",
				class_path,
				"#{file_name}.rb"
			)
		end
	end
end
