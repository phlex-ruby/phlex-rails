# frozen_string_literal: true

module Layout
	class WithPhlexView < ApplicationView
		include Phlex::Rails::Helpers::ContentFor

		def view_template
			content_for(:title) { "Phlex View" }
			h1 { "Hello from Phlex" }
		end
	end
end
