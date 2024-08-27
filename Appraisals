# frozen_string_literal: true

appraise "rails-7" do
	gem "rails", "~> 7"
	gem "sqlite3", "~> 1.7"
end

if RUBY_VERSION >= "3.1.0"
	appraise "rails-edge" do
		gem "rails", github: "rails/rails"
		gem "sqlite3", ">= 2.0"
	end
end
