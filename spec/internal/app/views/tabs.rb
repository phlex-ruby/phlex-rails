# frozen_string_literal: true

module Views
	class Tabs < Phlex::HTML
		Tab = Struct.new(:name, :content)

		include Phlex::DeferredRender

		def initialize
			@tabs = []
		end

		def template
			div(class: "tabs") do
				ul(class: "names") do
					@tabs.each { |t| li { t.name } }
				end

				ul(class: "content") do
					@tabs.each { |t| li(&t.content) }
				end
			end
		end

		def add_tab(name, &content)
			@tabs << Tab.new(name, content)
		end
	end
end
