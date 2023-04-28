# frozen_string_literal: true

require "spec_helper"

RSpec.describe Phlex::Rails::Helpers::Translate do
	include ViewHelper

	context "without lazy lookup" do
		let(:example) do
			Class.new(Phlex::HTML) do
				include Phlex::Rails::Helpers::Translate

				def template
					div do
						translate("temp.translation_key")
					end
				end
			end
		end

		it "works" do
			expect(I18n).to receive(:translate).with("temp.translation_key", anything).and_return("Olá")

			output = render example.new

			expect(output).to have_css "div", text: "Olá"
		end
	end

	context "with lazy lookup" do
		let(:example) do
			Class.new(Phlex::HTML) do
				include Phlex::Rails::Helpers::Translate

				def template
					div do
						translate(".translation_key")
					end
				end
			end
		end

		it "works" do
			expect(I18n).to receive(:translate).with("temp.translation_key", anything).and_return("Olá")

			output = render example.new

			expect(output).to have_css "div", text: "Olá"
		end
	end
end
