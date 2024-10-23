# frozen_string_literal: true

class LayoutController < ApplicationController
	layout -> { Components::Layout.new(color: :blue) }

	def with_erb_view
	end

	def with_phlex_view
		render Views::Layout::WithPhlexView.new
	end
end
