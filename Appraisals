# frozen_string_literal: true

appraise "rails-7" do
	gem "rails", "~> 7"
end

if RUBY_VERSION >= "3.2.0"
	appraise "rails-8" do
		gem "rails", "~> 8"
	end

	appraise "rails-edge" do
		gem "rails", github: "rails/rails"
	end
end
