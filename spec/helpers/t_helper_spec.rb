# frozen_string_literal: true

require "spec_helper"

RSpec.describe Phlex::Rails::Helpers::T do
	include ViewHelper

	context "without lazy lookup" do
		let(:example) do
			Class.new(Phlex::HTML) do
				include Phlex::Rails::Helpers::T

				def template
					div do
						t("shared.hello")
					end
				end
			end
		end

		it "doesn't prefix translation key with translation path" do
			allow(I18n).to receive(:translate).with("shared.hello", anything).and_return("Olá")

			output = render example.new

			expect(output).to have_css "div", text: "Olá"
		end
	end

	context "with lazy lookup" do
		let(:example) do
			my_view_class = Class.new(Phlex::HTML) do
				include Phlex::Rails::Helpers::T

				def template
					div do
						t(".hello")
					end
				end
			end
			stub_const("UserGroups::IndexPage", my_view_class)
		end

		it "prefixes translation key with translation path based on class name" do
			allow(I18n).to receive(:translate).with("user_groups.index_page.hello", anything).and_return("Olá")

			output = render example.new

			expect(output).to have_css "div", text: "Olá"
		end
	end
end
