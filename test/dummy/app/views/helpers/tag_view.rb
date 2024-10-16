# frozen_string_literal: true

class Views::Helpers::TagView < Views::Base
	include Phlex::Rails::Helpers::Tag

	def view_template
		tag.div do
			tag.h1("Hello World", id: "hello", class: "text-xl")
		end
	end
end
