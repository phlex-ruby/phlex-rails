# frozen_string_literal: true

module Phlex::Generators
	class ViewGenerator < ::Rails::Generators::NamedBase
		source_root File.expand_path("templates", __dir__)

		def create_view
			@path = File.join("app/views", class_path, "#{file_name}.rb")
			template "view.rb.erb", @path
		end
	end
end
