# frozen_string_literal: true

module Rendering
	class PartialFromPhlex < ApplicationView
		def view_template
			render "partial" do
				h1(id: "phlex") { "Partial from Phlex" }
			end
		end
	end
end
