# frozen_string_literal: true

module Views
	module Layout
		class WithPhlexView < Views::Base
			include Phlex::Rails::Helpers::ContentFor

			def view_template
				content_for(:title) { "Phlex View" }
				h1 { "Hello from Phlex" }
			end
		end
	end
end
