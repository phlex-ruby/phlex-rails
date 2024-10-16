# frozen_string_literal: true

class RenderingController < ApplicationController
	def partial_from_phlex
		render Views::Rendering::PartialFromPhlex.new
	end

	def view_component_from_phlex
		render Views::Rendering::ViewComponentFromPhlex.new
	end

	def phlex_component_from_erb
	end
end
