# frozen_string_literal: true

module Phlex
	module Rails
		class FormWith < Phlex::HTML
			def initialize(model: nil, scope: nil, url: nil, method: :post, form_options: {})
				@model = model
				@scope = scope || ActiveModel::Naming.param_key(@model.class)
				@url = url || @_view_context.url_for(@model)
				@method = method
				@form_options = form_options
			end

			def template(&block)
				form action: @url, method: @method, **@form_options do
					render FormFields.new(form: self, scopes: @scope) do |form_fields|
						form_fields.authenticity_token_field

						yield form_fields if block_given?
					end
				end
			end
		end
	end
end
