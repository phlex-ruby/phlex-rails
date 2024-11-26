# frozen_string_literal: true

require_relative "lib/phlex/rails/version"

Gem::Specification.new do |spec|
	spec.name = "phlex-rails"
	spec.version = Phlex::Rails::VERSION
	spec.authors = ["Joel Drapper"]
	spec.email = ["joel@drapper.me"]

	spec.summary = "A Phlex adapter for Rails"
	spec.description = "A high-performance view framework optimised for fun."
	spec.homepage = "https://www.phlex.fun"
	spec.license = "MIT"
	spec.required_ruby_version = ">= 3.2"

	spec.metadata["homepage_uri"] = spec.homepage
	spec.metadata["source_code_uri"] = "https://github.com/phlex-ruby/phlex-rails"
	spec.metadata["changelog_uri"] = "https://github.com/phlex-ruby/phlex-rails/blob/main/CHANGELOG.md"
	spec.metadata["funding_uri"] = "https://github.com/sponsors/joeldrapper"

	spec.files = Dir[
		"README.md",
		"LICENSE.txt",
		"lib/**/*"
	]

	spec.require_paths = ["lib"]

	spec.add_dependency "phlex", "2.0.0.beta2"
	spec.add_dependency "railties", ">= 6.1", "< 9"

	spec.metadata["rubygems_mfa_required"] = "true"
end
