# frozen_string_literal: true

require "spec_helper"

RSpec.describe Phlex::SGML do
	context "1.0" do
		describe "#render" do
			context "when given a block" do
				it "renders content in the proper order" do
					component = Class.new(Phlex::HTML) do
						def template(&block)
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
					def template
						render(template: "examples/sgml/template")
					end
				end

				content = ExamplesController.render(component)

				expect(content).to eq("Plain template.")
			end

			it "does not render a string" do
				component = Class.new(Phlex::HTML) do
					def template
						render("Plain string.")
					end
				end

				expect{ExamplesController.render(component)}.to raise_error(ActionView::MissingTemplate)
			end
		end
	end

	context "2.0" do
		before { Phlex::SGML.version(2) }
		after  { Phlex::SGML.version(1) }
		describe "#render" do
			context "when given a block" do
				it "renders content in the proper order" do
					component = Class.new(Phlex::HTML) do
						def template(&block)
							plain "Component A\n"
							render rails("examples/sgml/wrap", &block)
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
					def template
						render rails(template: "examples/sgml/template")
					end
				end

				content = ExamplesController.render(component)

				expect(content).to eq("Plain template.")
			end

			it "renders a string" do
				component = Class.new(Phlex::HTML) do
					def template
						render("Plain string.")
					end
				end

				content = ExamplesController.render(component)

				expect(content).to eq("Plain string.")
			end
		end
	end
end
