module Phlex
  module Rails
    class FormFields < Phlex::HTML
			def initialize(form:, scopes:)
				@scopes = Array.wrap(scopes).compact
				@form = form
			end

			def self.input_field(method_name, type:)
				define_method method_name do |field, value: @model.attributes[field.to_s], **attributes|
					input(
						name: field_name(field),
						type: type,
						value: value,
						**attributes
					)
				end
			end

			def authenticity_token_field
				input(
					name: "authenticity_token",
					type: "hidden",
					value: @_view_context.form_authenticity_token
				)
			end

			def submit(value)
				input(
					name: "commit",
					type: "submit",
					value: value
				)
			end

			def template(&blk)
				yield
			end

			def field_name(field_name)
				fields = [*@scopes, field_name].compact
				field_string = fields[0].to_s.dup
				field_string << fields[1..-1].map { |f| "[#{f}]" }.join
				field_string
			end

			def fields_for(scope, &blk)
				render FormFields.new(form: @form, scopes: [*@scopes, *Array.wrap(scope)]) do
					yield
				end
			end

			input_field :url_field, type: "url"
			input_field :text_field, type: "text"
			input_field :date_field, type: "date"
			input_field :time_field, type: "time"
			input_field :week_field, type: "week"
			input_field :month_field, type: "month"
			input_field :email_field, type: "email"
			input_field :color_field, type: "color"
			input_field :hidden_field, type: "hidden"
			input_field :search_field, type: "search"
			input_field :password_field, type: "password"
			input_field :telephone_field, type: "tel"
			input_field :datetime_local_field, type: "datetime-local"
		end
	end
end