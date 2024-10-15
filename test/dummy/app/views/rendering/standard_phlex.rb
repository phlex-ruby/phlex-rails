# frozen_string_literal: true

module Rendering
	class StandardPhlex < ApplicationView
		def view_template
			render Header do
				h1(id: "title") { "Hello Phlex!" }
			end
		end

		class Header < ApplicationComponent
			def view_template(&)
				render(&)
			end
		end
	end
end
