# frozen_string_literal: true

require "spec_helper"

RSpec.describe Phlex::SGML do
	describe "#render" do
		context "when given a block" do
			it "renders content in the proper order" do
				component = Class.new(Phlex::HTML) do
					def view_template(&block)
						plain "Component A\n"
						render("examples/sgml/wrap", &block)
						plain "Component B\n"
					end
				end

				content = ExamplesController.render(inline: <<~ERB, locals: { component: component })
					ERB A
					<%= render component.new do %>
						Hello
					<% end %>
					ERB B
				ERB

				expect(content).to eq(<<~OUTPUT)
					ERB A
					Component A
					Partial A

						Hello

					Partial B
					Component B
					ERB B
				OUTPUT
			end
		end

		it "renders a template without a block" do
			component = Class.new(Phlex::HTML) do
				def view_template
					render(template: "examples/sgml/template")
				end
			end

			content = ExamplesController.render(component)

			expect(content).to eq("Plain template.")
		end
	end
end
