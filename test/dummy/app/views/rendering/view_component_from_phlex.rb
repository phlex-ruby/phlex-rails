# frozen_string_literal: true

module Views
	module Rendering
		class ViewComponentFromPhlex < Views::Base
			def view_template
				h1 { "Before" }

				render VcComponent.new do |component|
					component.with_slot do
						h1(id: "phlex") { "Rendered from Phlex" }
					end
				end

				h1 { "After" }
			end
		end
	end
end
