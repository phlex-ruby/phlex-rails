# frozen_string_literal: true

class RenderingController < ApplicationController
	def standard_phlex
		render Rendering::StandardPhlex.new
	end

	def partial_from_phlex
		render Rendering::PartialFromPhlex.new
	end

	def view_component_from_phlex
		render Rendering::ViewComponentFromPhlex.new
	end

	def phlex_component_from_erb
	end
end
