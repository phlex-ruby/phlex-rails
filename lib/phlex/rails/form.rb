# frozen_string_literal: true

module Phlex
	module Rails
		class Form < Phlex::HTML
			def initialize(model, **opts)
				@model = model
				@url = opts[:url] || @_view_context.url_for(@model)
				@method = opts[:method] || @model.persisted? ? :patch : :post
			end

			def template(&block)
				render FormWith.new model: @model, action: @url, method: @method do
					yield
				end
			end
		end
	end
end
