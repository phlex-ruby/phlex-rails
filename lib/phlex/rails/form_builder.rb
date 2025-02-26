# frozen_string_literal: true

class Phlex::Rails::FormBuilder < Phlex::Rails::Decorator
	def button(...)
		@component.__raw_unless_external_block__(
			@object.button(...)
		)
	end

	def check_box(...)
		@component.__raw_unless_external_block__(
			@object.check_box(...)
		)
	end

	def checkbox(...)
		@component.__raw_unless_external_block__(
			@object.checkbox(...)
		)
	end

	def collection_check_boxes(*, **, &block)
		output = if block
			@object.collection_check_boxes(*, **) do |builder|
				yield ::Phlex::Rails::CheckboxBuilder.new(builder, component: @component)
			end
		else
			@object.collection_check_boxes(*, **)
		end

		@component.__raw_unless_external_block__(output)
	end

	def collection_checkboxes(*, **, &block)
		output = if block
			@object.collection_checkboxes(*, **) do |builder|
				yield ::Phlex::Rails::CheckboxBuilder.new(builder, component: @component)
			end
		else
			@object.collection_checkboxes(*, **)
		end

		@component.__raw_unless_external_block__(output)
	end

	def collection_radio_buttons(*, **, &block)
		output = if block
			@object.collection_radio_buttons(*, **) do |builder|
				yield ::Phlex::Rails::RadioButtonBuilder.new(builder, component: @component)
			end
		else
			@object.collection_radio_buttons(*, **)
		end

		@component.__raw_unless_external_block__(output)
	end

	def collection_select(...)
		@component.__raw_unless_external_block__(
			@object.collection_select(...)
		)
	end

	def color_field(...)
		@component.__raw_unless_external_block__(
			@object.color_field(...)
		)
	end

	def date_field(...)
		@component.__raw_unless_external_block__(
			@object.date_field(...)
		)
	end

	def date_select(...)
		@component.__raw_unless_external_block__(
			@object.date_select(...)
		)
	end

	def datetime_field(...)
		@component.__raw_unless_external_block__(
			@object.datetime_field(...)
		)
	end

	def datetime_local_field(...)
		@component.__raw_unless_external_block__(
			@object.datetime_local_field(...)
		)
	end

	def datetime_select(...)
		@component.__raw_unless_external_block__(
			@object.datetime_select(...)
		)
	end

	def email_field(...)
		@component.__raw_unless_external_block__(
			@object.email_field(...)
		)
	end

	def field_id(...)
		@object.field_id(...)
	end

	def field_name(...)
		@object.field_name(...)
	end

	def fields(*, **, &block)
		output = if block
			@object.fields(*, **) do |builder|
				yield ::Phlex::Rails::FormBuilder.new(builder, component: @component)
			end
		else
			@object.fields(*, **)
		end

		@component.__raw_unless_external_block__(output)
	end

	def fields_for(*, **, &block)
		output = if block
			@object.fields_for(*, **) do |builder|
				yield ::Phlex::Rails::FormBuilder.new(builder, component: @component)
			end
		else
			@object.fields_for(*, **)
		end

		@component.__raw_unless_external_block__(output)
	end

	def file_field(...)
		@component.__raw_unless_external_block__(
			@object.file_field(...)
		)
	end

	def grouped_collection_select(...)
		@component.__raw_unless_external_block__(
			@object.grouped_collection_select(...)
		)
	end

	def hidden_field(...)
		@component.__raw_unless_external_block__(
			@object.hidden_field(...)
		)
	end

	def id(...)
		@object.id(...)
	end

	def label(*, **, &block)
		output = if block
			@object.label(*, **) do |builder|
				yield ::Phlex::Rails::LabelBuilder.new(builder, component: @component)
			end
		else
			@object.label(*, **)
		end

		@component.__raw_unless_external_block__(output)
	end

	def month_field(...)
		@component.__raw_unless_external_block__(
			@object.month_field(...)
		)
	end

	def multipart=(value)
		@object.multipart = value
	end

	def number_field(...)
		@component.__raw_unless_external_block__(
			@object.number_field(...)
		)
	end

	def password_field(...)
		@component.__raw_unless_external_block__(
			@object.password_field(...)
		)
	end

	def phone_field(...)
		@component.__raw_unless_external_block__(
			@object.phone_field(...)
		)
	end

	def radio_button(...)
		@component.__raw_unless_external_block__(
			@object.radio_button(...)
		)
	end

	def range_field(...)
		@component.__raw_unless_external_block__(
			@object.range_field(...)
		)
	end

	def rich_text_area(...)
		@component.__raw_unless_external_block__(
			@object.rich_text_area(...)
		)
	end

	def rich_textarea(...)
		@component.__raw_unless_external_block__(
			@object.rich_textarea(...)
		)
	end

	def search_field(...)
		@component.__raw_unless_external_block__(
			@object.search_field(...)
		)
	end

	def select(...)
		@component.__raw_unless_external_block__(
			@object.select(...)
		)
	end

	def submit(...)
		@component.__raw_unless_external_block__(
			@object.submit(...)
		)
	end

	def telephone_field(...)
		@component.__raw_unless_external_block__(
			@object.telephone_field(...)
		)
	end

	def text_area(...)
		@component.__raw_unless_external_block__(
			@object.text_area(...)
		)
	end

	def text_field(...)
		@component.__raw_unless_external_block__(
			@object.text_field(...)
		)
	end

	def textarea(...)
		@component.__raw_unless_external_block__(
			@object.textarea(...)
		)
	end

	def time_field(...)
		@component.__raw_unless_external_block__(
			@object.time_field(...)
		)
	end

	def time_select(...)
		@component.__raw_unless_external_block__(
			@object.time_select(...)
		)
	end

	def time_zone_select(...)
		@component.__raw_unless_external_block__(
			@object.time_zone_select(...)
		)
	end

	def to_model(...)
		@object.to_model(...)
	end

	def to_partial_path(...)
		@object.to_partial_path(...)
	end

	def url_field(...)
		@component.__raw_unless_external_block__(
			@object.url_field(...)
		)
	end

	def week_field(...)
		@component.__raw_unless_external_block__(
			@object.week_field(...)
		)
	end

	def weekday_select(...)
		@component.__raw_unless_external_block__(
			@object.weekday_select(...)
		)
	end
end
