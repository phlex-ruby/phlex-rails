# frozen_string_literal: true

module Views
	module Rendering
		class PartialFromPhlex < Views::Base
			def view_template
				render partial: "partial" do
					h1(id: "phlex") { "Partial from Phlex" }
				end
			end
		end
	end
end
