# frozen_string_literal: true

module Phlex::Generators
	class ControllerGenerator < ::Rails::Generators::NamedBase # :nodoc:
		source_root File.expand_path("templates", __dir__)

		check_class_collision suffix: "Controller"

		argument :actions,
			type: :array,
			default: [],
			banner: "action action"

		class_option :skip_routes,
			type: :boolean,
			desc: "Don't add routes to config/routes.rb."

		class_option :parent,
			type: :string,
			default: "ApplicationController",
			desc: "The parent class for the generated controller"

		def create_controllers
			template "controller.rb.erb", File.join(
				"app/controllers", class_path, "#{file_name}_controller.rb"
			)
		end

		def copy_views
			actions.each do |action|
				@action = action
				@path = File.join(
					"app/views", class_path, file_name, "#{action}_view.rb"
				)

				template "view.rb.erb", @path
			end
		end

		def add_routes
			return if options[:skip_routes]

			routing_code = "resources :#{file_name}"

			if actions.any?
				routing_code << ", only: [#{actions.map { ":#{_1}" }.join(', ')}]"
			end

			route routing_code, namespace: regular_class_path
		end

		hook_for :test_framework, as: :controller do |generator|
			invoke generator, [remove_possible_suffix(name), actions]
		end

		private

		def parent_class_name
			options[:parent]
		end

		def file_name
			remove_possible_suffix(super)
		end

		def name
			remove_possible_suffix(super)
		end

		def remove_possible_suffix(name)
			name.sub(/_?controller$/i, "")
		end
	end
end
