# frozen_string_literal: true

require "spec_helper"

RSpec.describe "Layouts", type: :request do
	it "supports phlex views" do
		get "/articles/index"

		expect(response.body).to eq %(<!DOCTYPE html><html><head><title>Articles</title></head><body><main><h1>Articles</h1></main></body></html>)
	end

	it "supports erb views" do
		get "/articles/show"

		expect(response.body).to eq %(<!DOCTYPE html><html><head><title>Article</title></head><body><main>\n<h1>Article</h1>\n</main></body></html>)
	end
end
