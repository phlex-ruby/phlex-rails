# frozen_string_literal: true

module Phlex::Generators
	class ViewGenerator < ::Rails::Generators::NamedBase
		source_root File.expand_path("templates", __dir__)

		class_option :suffix, type: :boolean, default: true, desc: "Set to false to avoid adding the 'View' suffix to the class name."

		def create_view
			@path = File.join("app/views", class_path, "#{file_name}_view.rb")
			template "view.rb.erb", @path
		end
	end
end
