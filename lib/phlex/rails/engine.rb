# frozen_string_literal: true

require "rails/engine"

module Phlex
	module Rails
		# @api private
		class Engine < ::Rails::Engine
			initializer "phlex-rails.template_engine" do |_app|
				ActionView::Template.register_template_handler(
					:phlex,
					-> (_template, source) do
						"Phlex::Rails::TemplateHandler.call(#{source.inspect})"
					end
				)
			end
		end
	end
end
