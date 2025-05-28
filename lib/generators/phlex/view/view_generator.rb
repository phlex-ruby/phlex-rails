# frozen_string_literal: true

require_relative "../base_generator"

module Phlex::Generators
	class ViewGenerator < BaseGenerator
		set_source_root "view.rb.erb", __dir__

		def create_view
			@view_path = File.join("app", "views", class_path, "#{file_name}.rb")
			template "view.rb.erb", File.join(destination_root, @view_path)
		end
	end
end
