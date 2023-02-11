# frozen_string_literal: true

require "spec_helper"

Item = Struct.new(:id, :name_with_initial)

RSpec.describe Phlex::Rails::Helpers::FormWith do
	include ViewHelper

	let(:output) { render example.new }

	let(:example) do
		Class.new(Phlex::HTML) do
			include Phlex::Rails::Helpers::FormWith

			def template
				form_with url: "/foo" do |f|
					f.text_field :name

					f.label :email do
						f.text_field :email
					end

					f.label :foo do
						span { "Hello" }
					end
				end
			end
		end
	end

	it "renders the form" do
		expect(output).to have_css "form[action='/foo']"
	end

	it "supports text fields" do
		expect(output).to have_css "form[action='/foo']>input[type='text'][name='name']"
	end

	it "supports labels" do
		expect(output).to have_css "form[action='/foo']>label>input[type='text'][name='email']"
	end

	it "supports phlex in labels" do
		expect(output).to have_css "form[action='/foo']>label>span", text: "Hello"
	end
end
