# frozen_string_literal: true

require "spec_helper"

RSpec.describe Phlex::Rails::TemplateHandler do
	it "renders as expected" do
		result = Phlex::Rails::TemplateHandler.call(
			"h1 { 'hello world' }"
		)

		expect(result).to eq %(<h1>hello world</h1>)
	end
end
