# frozen_string_literal: true

module Rendering
	class ViewComponentFromPhlex < ApplicationView
		def view_template
			render VcComponent.new do |component|
				component.slot do
					p { "Rendered from Phlex" }
				end
			end
		end
	end
end
