# frozen_string_literal: true

class Phlex::Rails::FormBuilder < Phlex::Rails::Decorator
	define_method :__caller_locations__, ::Object.instance_method(:caller_locations)

	def method_missing(...)
		output = @object.public_send(...)

		case output
		when ::ActiveSupport::SafeBuffer
			@component.raw(output)
		else
			output
		end
	end

	def id(...) = @object.id(...)
	def to_model(...) = @object.to_model(...)
	def field_id(...) = @object.field_id(...)
	def field_name(...) = @object.field_name(...)
	def to_partial_path(...) = @object.to_partial_path(...)

	def multipart=(value)
		@object.multipart = value
	end

	output def button(...) = nil
	output def check_box(...) = nil
	output def checkbox(...) = nil
	output def collection_select(...) = nil
	output def color_field(...) = nil
	output def date_field(...) = nil
	output def date_select(...) = nil
	output def datetime_field(...) = nil
	output def datetime_local_field(...) = nil
	output def datetime_select(...) = nil
	output def email_field(...) = nil
	output def file_field(...) = nil
	output def grouped_collection_select(...) = nil
	output def hidden_field(...) = nil
	output def month_field(...) = nil
	output def number_field(...) = nil
	output def password_field(...) = nil
	output def phone_field(...) = nil
	output def radio_button(...) = nil
	output def range_field(...) = nil
	output def rich_text_area(...) = nil
	output def rich_textarea(...) = nil
	output def search_field(...) = nil
	output def select(...) = nil
	output def submit(...) = nil
	output def telephone_field(...) = nil
	output def text_area(...) = nil
	output def text_field(...) = nil
	output def textarea(...) = nil
	output def time_field(...) = nil
	output def time_select(...) = nil
	output def time_zone_select(...) = nil
	output def url_field(...) = nil
	output def week_field(...) = nil
	output def weekday_select(...) = nil

	def collection_check_boxes(*, **, &block)
		output = if block
			@object.collection_check_boxes(*, **) do |builder|
				yield ::Phlex::Rails::CheckboxBuilder.new(builder, component: @component)
			end
		else
			@object.collection_check_boxes(*, **)
		end

		@component.raw(output)
	end

	def collection_checkboxes(*, **, &block)
		output = if block
			@object.collection_checkboxes(*, **) do |builder|
				yield ::Phlex::Rails::CheckboxBuilder.new(builder, component: @component)
			end
		else
			@object.collection_checkboxes(*, **)
		end

		@component.raw(output)
	end

	def collection_radio_buttons(*, **, &block)
		output = if block
			@object.collection_radio_buttons(*, **) do |builder|
				yield ::Phlex::Rails::RadioButtonBuilder.new(builder, component: @component)
			end
		else
			@object.collection_radio_buttons(*, **)
		end

		@component.raw(output)
	end

	def fields(*, **, &block)
		output = if block
			@object.fields(*, **) do |builder|
				yield ::Phlex::Rails::FormBuilder.new(builder, component: @component)
			end
		else
			@object.fields(*, **)
		end

		@component.raw(output)
	end

	def fields_for(*, **, &block)
		output = if block
			@object.fields_for(*, **) do |builder|
				yield ::Phlex::Rails::FormBuilder.new(builder, component: @component)
			end
		else
			@object.fields_for(*, **)
		end

		@component.raw(output)
	end

	def label(*, **, &block)
		output = if block
			@object.label(*, **) do |builder|
				yield ::Phlex::Rails::LabelBuilder.new(builder, component: @component)
			end
		else
			@object.label(*, **)
		end

		@component.raw(output)
	end
end
