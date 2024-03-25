class Helpers::TagView < ApplicationView
	include Phlex::Rails::Helpers::Tag

	def view_template
		tag.div do
			tag.h1("Hello World", id: "hello", class: "text-xl")
		end
	end
end
