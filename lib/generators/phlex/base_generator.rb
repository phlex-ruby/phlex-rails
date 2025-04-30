# frozen_string_literal: true

module Phlex::Generators
	class BaseGenerator < ::Rails::Generators::NamedBase
		def self.set_source_root(file_name, dir)
			if File.exist?(
				Rails.root.join("lib/generators/phlex/templates", file_name)
			)

				source_root Rails.root.join("lib/generators/phlex/templates")
			else
				source_root File.expand_path("templates", dir)
			end
		end
	end
end
