# frozen_string_literal: true

require "view_helper"

Item = Struct.new(:id, :name_with_initial)

RSpec.describe Phlex::Rails::Helpers::FormWith do
	include ViewHelper

	let(:output) { render example.new }

	let(:example) do
		Class.new(Phlex::HTML) do
			include Phlex::Rails::Helpers::FormWith

			def template
				form_with url: "/foo" do |f|
				end
			end
		end
	end

	it "works" do
		expect(output).to have_css "form[action='/foo']"
	end
end
