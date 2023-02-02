# frozen_string_literal: true

require "view_helper"

RSpec.describe Phlex::Rails::Helpers::LinkTo do
	include ViewHelper

	let(:output) { render example.new }

	context "with a simple link" do
		let(:example) do
			Class.new(Phlex::HTML) do
				include Phlex::Rails::Helpers::LinkTo

				def template
					link_to "Home", "/home"
				end
			end
		end

		it "works" do
			expect(output).to have_css "a[href='/home']", text: "Home"
		end
	end

	context "with a block" do
		let(:example) do
			Class.new(Phlex::HTML) do
				include Phlex::Rails::Helpers::LinkTo

				def template
					link_to "/home" do
						h1 { "Hi" }
					end
				end
			end
		end

		it "works" do
			expect(output).to have_css "a[href='/home']>h1", text: "Hi"
		end
	end
end
