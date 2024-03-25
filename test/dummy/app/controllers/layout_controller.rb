# frozen_string_literal: true

class LayoutController < ApplicationController
	layout -> { ApplicationLayout }

	def with_erb_view
	end

	def with_phlex_view
	end
end
