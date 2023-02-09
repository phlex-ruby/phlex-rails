# frozen_string_literal: true

require "view_helper"

RSpec.describe Phlex::Rails::Helpers::NumberToHuman do
	include ViewHelper

	let(:output) { render example.new }

	let(:example) do
		Class.new(Phlex::HTML) do
			include Phlex::Rails::Helpers::NumberToHuman

			def template
				div do
					number_to_human 10_000
				end
			end
		end
	end

	it "renders the number" do
		expect(output).to have_css "div", text: "10 Thousand"
	end
end
