# frozen_string_literal: true

require "view_helper"

RSpec.describe Phlex::Rails::Helpers::DateTimeFieldTag do
	include ViewHelper

	let(:output) { render example.new }

	let(:example) do
		Class.new(Phlex::HTML) do
			include Phlex::Rails::Helpers::DateTimeFieldTag

			def template
				datetime_field_tag :created_at
			end
		end
	end

	it "renders the number" do
		expect(output).to have_css "input[type='datetime-local'][name='created_at']"
	end
end
