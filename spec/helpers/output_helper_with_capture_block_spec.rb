# frozen_string_literal: true

require "spec_helper"

RSpec.describe Phlex::Rails::Helpers::LinkTo do
	include ViewHelper

	let(:output) { render example.new }

	let(:example) do
		Class.new(Phlex::HTML) do
			include Phlex::Rails::Helpers::LinkTo

			def view_template
				link_to "Foo", "/foo"

				link_to("/bar") do
					h1 { "Bar" }
				end
			end
		end
	end

	it "supports positional content" do
		expect(output).to have_css "a[href='/foo']", text: "Foo"
	end

	it "supports block content" do
		expect(output).to have_css "a[href='/bar']>h1", text: "Bar"
	end
end
