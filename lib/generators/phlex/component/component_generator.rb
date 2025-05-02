# frozen_string_literal: true

require_relative "../base_generator"

module Phlex::Generators
	class ComponentGenerator < BaseGenerator
		set_source_root "component.rb.erb", __dir__

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
