# frozen_string_literal: true

require "spec_helper"

RSpec.describe Phlex::Rails::Helpers::Tag do
	include ViewHelper

	let(:output) { render example.new }

	context "with a simple tag" do
		let(:example) do
			Class.new(Phlex::HTML) do
				include Phlex::Rails::Helpers::Tag

				def view_template
					tag.div "Hello"
				end
			end
		end

		it "works" do
			expect(output).to have_css "div", text: "Hello"
		end
	end

	context "with block content" do
		let(:example) do
			Class.new(Phlex::HTML) do
				include Phlex::Rails::Helpers::Tag

				def view_template
					tag.h1 do
						tag.h2 do
							h3 { "Hello" }
						end
					end
				end
			end
		end

		it "works" do
			expect(output).to have_css "h1>h2>h3", text: "Hello"
		end
	end

	context "with arguments" do
		let(:example) do
			Class.new(Phlex::HTML) do
				include Phlex::Rails::Helpers::Tag

				def view_template
					tag(:img, src: "image.jpg")
				end
			end
		end

		it "works" do
			expect(output).to have_css "img[src='image.jpg']"
		end
	end
end
