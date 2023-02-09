# frozen_string_literal: true

module Phlex::Rails
	class BufferedFormBuilder < Buffered
		# @!method field_id(...)
		# @!method field_name(...)
		# @!method id(...)
		# @!method multipart=(value)
		# @!method to_model(...)
		# @!method to_partial_path(...)
		def_delegators :@object,
			:to_model,
			:to_partial_path,
			:options,
			:id,
			:field_helpers,
			:multipart=,
			:field_name,
			:index,
			:multipart,
			:multipart?,
			:emitted_hidden_id?,
			:field_id,
			:options=,
			:object=,
			:object_name,
			:field_helpers=,
			:field_helpers?,
			:object_name=,
			:object,
			:convert_to_model,
			:model_name_from_record_or_class

		# @!method button(...)
		# @!method check_box(...)
		# @!method collection_select(...)
		# @!method color_field(...)
		# @!method date_field(...)
		# @!method date_select(...)
		# @!method datetime_field(...)
		# @!method datetime_local_field(...)
		# @!method datetime_select(...)
		# @!method email_field(...)
		# @!method file_field(...)
		# @!method grouped_collection_select(...)
		# @!method hidden_field(...)
		# @!method month_field(...)
		# @!method number_field(...)
		# @!method password_field(...)
		# @!method phone_field(...)
		# @!method radio_button(...)
		# @!method range_field(...)
		# @!method rich_text_area(...)
		# @!method search_field(...)
		# @!method select(...)
		# @!method submit(...)
		# @!method telephone_field(name, value = nil, **attributes)
		# 	Outputs an input field of type <code>tel</code>.
		# 	@param name [Symbol] the name of the field.
		# 	@param value [String] the default value.
		# 	@param attributes HTML attributes.
		# 	@return [nil]
		# @!method text_area(...)
		# @!method text_field(...)
		# @!method time_field(...)
		# @!method time_select(...)
		# @!method time_zone_select(...)
		# @!method url_field(...)
		# @!method week_field(...)
		# @!method weekday_select(...)

		# @!method label(...)
		# 	@yield [builder]
		# 	@yieldparam builder [Phlex::Rails::BufferedLabelBuilder]
		define_builder_yielding_method :label, ::Phlex::Rails::BufferedLabelBuilder

		# @!method fields(...)
		# 	@yield [builder]
		# 	@yieldparam builder [Phlex::Rails::BufferedFormBuilder]
		define_builder_yielding_method :fields, ::Phlex::Rails::BufferedFormBuilder

		# @!method fields_for(...)
		# 	@yield [builder]
		# 	@yieldparam builder [Phlex::Rails::BufferedFormBuilder]
		define_builder_yielding_method :fields_for, ::Phlex::Rails::BufferedFormBuilder

		# @!method collection_check_boxes(...)
		# 	@yield [builder]
		# 	@yieldparam builder [Phlex::Rails::BufferedCheckboxBuilder]
		define_builder_yielding_method :collection_check_boxes, ::Phlex::Rails::BufferedCheckboxBuilder

		# @!method collection_radio_buttons(...)
		# 	@yield [builder]
		# 	@yieldparam builder [Phlex::Rails::BufferedRadioButtonBuilder]
		define_builder_yielding_method :collection_radio_buttons, ::Phlex::Rails::BufferedRadioButtonBuilder
	end
end
