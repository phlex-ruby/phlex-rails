# frozen_string_literal: true

module Phlex::Rails
	class BufferedFormBuilder < Buffered
		def_delegators :@object,
			:to_model,
			:to_partial_path,
			:options,
			:id,
			:is_a?,
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

		define_builder_yielding_method :label, ::Phlex::Rails::BufferedLabelBuilder
		define_builder_yielding_method :fields, ::Phlex::Rails::BufferedFormBuilder
		define_builder_yielding_method :fields_for, ::Phlex::Rails::BufferedFormBuilder
		define_builder_yielding_method :collection_check_boxes, ::Phlex::Rails::BufferedCheckboxBuilder
		define_builder_yielding_method :collection_radio_buttons, ::Phlex::Rails::BufferedRadioButtonBuilder
	end
end
