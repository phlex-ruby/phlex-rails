# frozen_string_literal: true

module Phlex::Rails::Helpers
	def self.helpers
		constants.map { |constant| const_get constant }
	end

	def self.included(component)
		helpers.each { |helper| component.include helper }
	end

	module ActionCableMetaTag
		extend Phlex::Rails::HelperMacros

		# @!method action_cable_meta_tag
		# 	Outputs an "action-cable-url" meta tag with the value of the URL specified in your configuration. Ensure this is above your JavaScript tag:
		# 	@see https://api.rubyonrails.org/classes/ActionCable/Helpers/ActionCableHelper.html#method-i-action_cable_meta_tag
		# 	@return [nil]
		define_output_helper :action_cable_meta_tag
	end

	module ActionName
		extend Phlex::Rails::HelperMacros

		# @!method action_name
		# 	@return [String] the name of the controller action, e.g. <code>"index"</code>
		# 	@see https://api.rubyonrails.org/classes/AbstractController/Base.html#method-i-action_name
		define_value_helper :action_name
	end

	module AssetPath
		extend Phlex::Rails::HelperMacros

		# @!method asset_path(source, host: nil, protocol: nil, type: nil, skip_pipeline: nil, extname: nil)
		# 	@param source [String]
		# 	@param host [String]
		# 	@param protocol [String] e.g. <code>"https"</code>
		# 	@param type [Symbol] e.g. <code>:javascript</code>
		# 	@param skip_pipeline [bool]
		# 	@param extname [String] e.g. <code>".js"</code>
		# 	@see https://api.rubyonrails.org/classes/ActionView/Helpers/AssetUrlHelper.html#method-i-asset_path
		define_value_helper :asset_path
	end

	module AssetURL
		extend Phlex::Rails::HelperMacros

		# @!method asset_url(...)
		define_value_helper :asset_url
	end

	module AudioPath
		extend Phlex::Rails::HelperMacros

		# @!method audio_path(...)
		define_value_helper :audio_path
	end

	module AudioTag
		extend Phlex::Rails::HelperMacros

		# @!method audio_tag(...)
		# 	@return [nil]
		define_output_helper :audio_tag
	end

	module AudioURL
		extend Phlex::Rails::HelperMacros

		# @!method audio_url(...)
		define_value_helper :audio_url
	end

	module AutoDiscoveryLinkTag
		extend Phlex::Rails::HelperMacros

		# @!method auto_discovery_link_tag(...)
		# 	@return [nil]
		define_output_helper :auto_discovery_link_tag
	end

	module BuildTagValues
		extend Phlex::Rails::HelperMacros

		# @!method build_tag_values(...)
		define_value_helper :build_tag_values
	end

	module ButtonTag
		extend Phlex::Rails::HelperMacros

		# @!method button_tag(...)
		# 	@return [nil]
		define_output_helper_with_capture_block :button_tag
	end

	module ButtonTo
		extend Phlex::Rails::HelperMacros

		# @!method button_to(...)
		# 	@return [nil]
		define_output_helper_with_capture_block :button_to
	end

	module Checkbox
		extend Phlex::Rails::HelperMacros

		# @!method check_box(...)
		# 	@return [nil]
		define_output_helper :check_box
	end

	module CheckboxTag
		extend Phlex::Rails::HelperMacros

		# @!method check_box_tag(...)
		# 	@return [nil]
		define_output_helper :check_box_tag
	end

	module ClassNames
		extend Phlex::Rails::HelperMacros

		# @!method class_names(...)
		define_value_helper :class_names
	end

	module CollectionCheckboxes
		extend Phlex::Rails::HelperMacros

		# @!method collection_check_boxes(...)
		# 	@yield [builder]
		# 	@yieldparam builder [Phlex::Rails::BufferedCheckboxBuilder]
		define_builder_yielding_helper :collection_check_boxes, Phlex::Rails::BufferedCheckboxBuilder
	end

	module CollectionRadioButtons
		extend Phlex::Rails::HelperMacros

		# @!method collection_radio_buttons(...)
		# 	@yield [builder]
		# 	@yieldparam builder [Phlex::Rails::BufferedRadioButtonBuilder]
		define_builder_yielding_helper :collection_radio_buttons, Phlex::Rails::BufferedRadioButtonBuilder
	end

	module CollectionSelect
		extend Phlex::Rails::HelperMacros

		# @!method collection_select(...)
		# 	@return [nil]
		define_output_helper :collection_select
	end

	module ColorField
		extend Phlex::Rails::HelperMacros

		# @!method color_field(...)
		# 	@return [nil]
		define_output_helper :color_field
	end

	module ColorFieldTag
		extend Phlex::Rails::HelperMacros

		# @!method color_field_tag(...)
		# 	@return [nil]
		define_output_helper :color_field_tag
	end

	module ComputeAssetExtname
		extend Phlex::Rails::HelperMacros

		# @!method compute_asset_extname(...)
		define_value_helper :compute_asset_extname
	end

	module ComputeAssetHost
		extend Phlex::Rails::HelperMacros

		# @!method compute_asset_host(...)
		define_value_helper :compute_asset_host
	end

	module ComputeAssetPath
		extend Phlex::Rails::HelperMacros

		# @!method compute_asset_path(...)
		define_value_helper :compute_asset_path
	end

	module ContentFor
		extend Phlex::Rails::HelperMacros

		# @!method content_for?(...)
		define_value_helper :content_for?

		# @!method content_for(...)
		define_value_helper_with_capture_block :content_for
	end

	module ContentTag
		extend Phlex::Rails::HelperMacros

		# @!method content_tag(...)
		# 	@return [nil]
		define_output_helper_with_capture_block :content_tag
	end

	module ControllerName
		extend Phlex::Rails::HelperMacros

		# @!method controller_name(...)
		define_value_helper :controller_name
	end

	module ControllerPath
		extend Phlex::Rails::HelperMacros

		# @!method controller_path(...)
		define_value_helper :controller_path
	end

	module CSPMetaTag
		extend Phlex::Rails::HelperMacros

		# @!method csp_meta_tag(...)
		# 	@return [nil]
		define_output_helper :csp_meta_tag
	end

	module CSRFMetaTags
		extend Phlex::Rails::HelperMacros

		# @!method csrf_meta_tags(...)
		# 	@return [nil]
		define_output_helper :csrf_meta_tags
	end

	module CurrentCycle
		extend Phlex::Rails::HelperMacros

		# @!method current_cycle(...)
		define_value_helper :current_cycle
	end

	module CurrentPage
		extend Phlex::Rails::HelperMacros

		# @!method current_page?(...)
		define_value_helper :current_page?
	end

	module Cycle
		extend Phlex::Rails::HelperMacros

		# @!method cycle(...)
		define_value_helper :cycle
	end

	module DateField
		extend Phlex::Rails::HelperMacros

		# @!method date_field(...)
		# 	@return [nil]
		define_output_helper :date_field
	end

	module DateFieldTag
		extend Phlex::Rails::HelperMacros

		# @!method date_field_tag(...)
		# 	@return [nil]
		define_output_helper :date_field_tag
	end

	module DateSelect
		extend Phlex::Rails::HelperMacros

		# @!method date_select(...)
		# 	@return [nil]
		define_output_helper :date_select
	end

	module DateTimeField
		extend Phlex::Rails::HelperMacros

		# @!method datetime_field(...)
		# 	@return [nil]
		define_output_helper :datetime_field
	end

	module DateTimeFieldTag
		extend Phlex::Rails::HelperMacros

		# @!method datetime_field_tag(...)
		# 	@return [nil]
		define_output_helper :datetime_field_tag
	end

	module DateTimeLocalField
		extend Phlex::Rails::HelperMacros

		# @!method datetime_local_field(...)
		# 	@return [nil]
		define_output_helper :datetime_local_field
	end

	module DateTimeLocalFieldTag
		extend Phlex::Rails::HelperMacros

		# @!method datetime_local_field_tag(...)
		# 	@return [nil]
		define_output_helper :datetime_local_field_tag
	end

	module DateTimeSelect
		extend Phlex::Rails::HelperMacros

		# @!method datetime_select(...)
		# 	@return [nil]
		define_output_helper :datetime_select
	end

	module Debug
		extend Phlex::Rails::HelperMacros

		# @!method debug(...)
		# 	@return [nil]
		define_output_helper :debug
	end

	module DefaultURLOptions
		extend Phlex::Rails::HelperMacros

		# @!method default_url_options(...)
		define_value_helper :default_url_options
	end

	module DistanceOfTimeInWords
		extend Phlex::Rails::HelperMacros

		# @!method distance_of_time_in_words(...)
		define_value_helper :distance_of_time_in_words
	end

	module DistanceOfTimeInWordsToNow
		extend Phlex::Rails::HelperMacros

		# @!method distance_of_time_in_words_to_now(...)
		define_value_helper :distance_of_time_in_words_to_now
	end

	module DOMClass
		extend Phlex::Rails::HelperMacros

		# @!method dom_class(...)
		define_value_helper :dom_class
	end

	module DOMID
		extend Phlex::Rails::HelperMacros

		# @!method dom_id(...)
		define_value_helper :dom_id
	end

	module EmailField
		extend Phlex::Rails::HelperMacros

		# @!method email_field(...)
		# 	@return [nil]
		define_output_helper :email_field
	end

	module EmailFieldTag
		extend Phlex::Rails::HelperMacros

		# @!method email_field_tag(...)
		# 	@return [nil]
		define_output_helper :email_field_tag
	end

	module ErrorMessage
		extend Phlex::Rails::HelperMacros

		# @!method error_message(...)
		define_value_helper :error_message
	end

	module ErrorWrapping
		extend Phlex::Rails::HelperMacros

		# @!method error_wrapping(...)
		# 	@return [nil]
		define_output_helper :error_wrapping
	end

	module EscapeOnce
		extend Phlex::Rails::HelperMacros

		# @!method escape_once(...)
		define_value_helper :escape_once
	end

	module Excerpt
		extend Phlex::Rails::HelperMacros

		# @!method excerpt(...)
		define_value_helper :excerpt
	end

	module FaviconLinkTag
		extend Phlex::Rails::HelperMacros

		# @!method favicon_link_tag(...)
		# 	@return [nil]
		define_output_helper :favicon_link_tag
	end

	module FieldID
		extend Phlex::Rails::HelperMacros

		# @!method field_id(...)
		define_value_helper :field_id
	end

	module FieldName
		extend Phlex::Rails::HelperMacros

		# @!method field_name(...)
		define_value_helper :field_name
	end

	module Fields
		extend Phlex::Rails::HelperMacros

		# @!method fields(...)
		# 	@yield [builder]
		# 	@yieldparam builder [Phlex::Rails::BufferedFormBuilder]
		define_builder_yielding_helper :fields, Phlex::Rails::BufferedFormBuilder
	end

	module FieldSetTag
		extend Phlex::Rails::HelperMacros

		# @!method field_set_tag(...)
		# 	@return [nil]
		define_output_helper_with_capture_block :field_set_tag
	end

	module FieldsFor
		extend Phlex::Rails::HelperMacros

		# @!method fields_for(...)
		# 	@yield [builder]
		# 	@yieldparam builder [Phlex::Rails::BufferedFormBuilder]
		define_builder_yielding_helper :fields_for, Phlex::Rails::BufferedFormBuilder
	end

	module FileField
		extend Phlex::Rails::HelperMacros

		# @!method file_field(...)
		# 	@return [nil]
		define_output_helper :file_field
	end

	module FileFieldTag
		extend Phlex::Rails::HelperMacros

		# @!method file_field_tag(...)
		# 	@return [nil]
		define_output_helper :file_field_tag
	end

	module Flash
		extend Phlex::Rails::HelperMacros

		# @!method flash(...)
		define_value_helper :flash
	end

	module FontPath
		extend Phlex::Rails::HelperMacros

		# @!method font_path(...)
		define_value_helper :font_path
	end

	module FontURL
		extend Phlex::Rails::HelperMacros

		# @!method font_url(...)
		define_value_helper :font_url
	end

	module FormFor
		extend Phlex::Rails::HelperMacros

		# @!method form_for(...)
		# 	@yield [builder]
		# 	@yieldparam builder [Phlex::Rails::BufferedFormBuilder]
		define_builder_yielding_helper :form_for, Phlex::Rails::BufferedFormBuilder
	end

	module FormTag
		extend Phlex::Rails::HelperMacros

		# @!method form_tag(...)
		# 	@return [nil]
		define_output_helper_with_capture_block :form_tag
	end

	module FormWith
		extend Phlex::Rails::HelperMacros

		# @!method form_with(...)
		# 	@yield [builder]
		# 	@yieldparam builder [Phlex::Rails::BufferedFormBuilder]
		define_builder_yielding_helper :form_with, Phlex::Rails::BufferedFormBuilder
	end

	module GroupedCollectionSelect
		extend Phlex::Rails::HelperMacros

		# @!method grouped_collection_select(...)
		# 	@return [nil]
		define_output_helper :grouped_collection_select
	end

	module GroupedOptionsForSelect
		extend Phlex::Rails::HelperMacros

		# @!method grouped_options_for_select(...)
		# 	@return [nil]
		define_output_helper :grouped_options_for_select
	end

	module HiddenField
		extend Phlex::Rails::HelperMacros

		# @!method hidden_field(...)
		# 	@return [nil]
		define_output_helper :hidden_field
	end

	module HiddenFieldTag
		extend Phlex::Rails::HelperMacros

		# @!method hidden_field_tag(...)
		# 	@return [nil]
		define_output_helper :hidden_field_tag
	end

	module Highlight
		extend Phlex::Rails::HelperMacros

		# @!method highlight(...)
		# 	@return [nil]
		define_output_helper :highlight
	end

	module ImagePath
		extend Phlex::Rails::HelperMacros

		# @!method image_path(...)
		define_value_helper :image_path
	end

	module ImageSubmitTag
		extend Phlex::Rails::HelperMacros

		# @!method image_submit_tag(...)
		# 	@return [nil]
		define_output_helper :image_submit_tag
	end

	module ImageTag
		extend Phlex::Rails::HelperMacros

		# @!method image_tag(...)
		# 	@return [nil]
		define_output_helper :image_tag
	end

	module ImageURL
		extend Phlex::Rails::HelperMacros

		# @!method image_url(...)
		define_value_helper :image_url
	end

	module JavaScriptImportModuleTag
		extend Phlex::Rails::HelperMacros

		# @!method javascript_import_module_tag(...)
		# 	@return [nil]
		define_output_helper :javascript_import_module_tag
	end

	module JavaScriptImportMapTags
		extend Phlex::Rails::HelperMacros

		# @!method javascript_importmap_tags(...)
		# 	@return [nil]
		define_output_helper :javascript_importmap_tags
	end

	module JavaScriptIncludeTag
		extend Phlex::Rails::HelperMacros

		# @!method javascript_include_tag(...)
		# 	@return [nil]
		define_output_helper :javascript_include_tag
	end

	module JavaScriptPath
		extend Phlex::Rails::HelperMacros

		# @!method javascript_path(...)
		define_value_helper :javascript_path
	end

	module JavaScriptTag
		extend Phlex::Rails::HelperMacros

		# @!method javascript_tag(...)
		# 	@return [nil]
		define_output_helper_with_capture_block :javascript_tag
	end

	module JavaScriptURL
		extend Phlex::Rails::HelperMacros

		# @!method javascript_url(...)
		define_value_helper :javascript_url
	end

	module L
		extend Phlex::Rails::HelperMacros

		# @!method l(...)
		define_value_helper :l
	end

	module Label
		extend Phlex::Rails::HelperMacros

		# @!method label(...)
		define_builder_yielding_helper :label, Phlex::Rails::BufferedLabelBuilder
	end

	module LabelTag
		extend Phlex::Rails::HelperMacros

		# @!method label_tag(...)
		# 	@return [nil]
		define_output_helper_with_capture_block :label_tag
	end

	module LinkTo
		extend Phlex::Rails::HelperMacros

		# @!method link_to(...)
		# 	@return [nil]
		define_output_helper_with_capture_block :link_to
	end

	module LinkIf
		extend Phlex::Rails::HelperMacros

		# @!method link_to_if(...)
		# 	@return [nil]
		define_output_helper_with_capture_block :link_to_if
	end

	module LinkToUnless
		extend Phlex::Rails::HelperMacros

		# @!method link_to_unless(...)
		# 	@return [nil]
		define_output_helper_with_capture_block :link_to_unless
	end

	module LinkToUnlessCurrent
		extend Phlex::Rails::HelperMacros

		# @!method link_to_unless_current(...)
		# 	@return [nil]
		define_output_helper_with_capture_block :link_to_unless_current
	end

	module Localize
		extend Phlex::Rails::HelperMacros

		# @!method localize(...)
		define_value_helper :localize
	end

	module MailTo
		extend Phlex::Rails::HelperMacros

		# @!method mail_to(...)
		# 	@return [nil]
		define_output_helper_with_capture_block :mail_to
	end

	module MonthField
		extend Phlex::Rails::HelperMacros

		# @!method month_field(...)
		# 	@return [nil]
		define_output_helper :month_field
	end

	module MonthFieldTag
		extend Phlex::Rails::HelperMacros

		# @!method month_field_tag(...)
		# 	@return [nil]
		define_output_helper :month_field_tag
	end

	module NumberField
		extend Phlex::Rails::HelperMacros

		# @!method number_field(...)
		# 	@return [nil]
		define_output_helper :number_field
	end

	module NumberFieldTag
		extend Phlex::Rails::HelperMacros

		# @!method number_field_tag(...)
		# 	@return [nil]
		define_output_helper :number_field_tag
	end

	module NumberToCurrency
		extend Phlex::Rails::HelperMacros

		# @!method number_to_currency(...)
		define_value_helper :number_to_currency
	end

	module NumberToHuman
		extend Phlex::Rails::HelperMacros

		# @!method number_to_human(...)
		define_value_helper :number_to_human
	end

	module NumberToHumanSize
		extend Phlex::Rails::HelperMacros

		# @!method number_to_human_size(...)
		define_value_helper :number_to_human_size
	end

	module NumberToPercentage
		extend Phlex::Rails::HelperMacros

		# @!method number_to_percentage(...)
		define_value_helper :number_to_percentage
	end

	module NumberToPhone
		extend Phlex::Rails::HelperMacros

		# @!method number_to_phone(...)
		define_value_helper :number_to_phone
	end

	module NumberWithDelimiter
		extend Phlex::Rails::HelperMacros

		# @!method number_with_delimiter(...)
		define_value_helper :number_with_delimiter
	end

	module NumberWithPrecision
		extend Phlex::Rails::HelperMacros

		# @!method number_with_precision(...)
		define_value_helper :number_with_precision
	end

	module Object
		extend Phlex::Rails::HelperMacros

		# @!method object(...)
		define_value_helper :object
	end

	module OptionGroupsFromCollectionForSelect
		extend Phlex::Rails::HelperMacros

		# @!method option_groups_from_collection_for_select(...)
		# 	@return [nil]
		define_output_helper :option_groups_from_collection_for_select
	end

	module OptionsForSelect
		extend Phlex::Rails::HelperMacros

		# @!method options_for_select(...)
		# 	@return [nil]
		define_output_helper :options_for_select
	end

	module OptionsFromCollectionForSelect
		extend Phlex::Rails::HelperMacros

		# @!method options_from_collection_for_select(...)
		# 	@return [nil]
		define_output_helper :options_from_collection_for_select
	end

	module PasswordField
		extend Phlex::Rails::HelperMacros

		# @!method password_field(...)
		# 	@return [nil]
		define_output_helper :password_field
	end

	module PasswordFieldTag
		extend Phlex::Rails::HelperMacros

		# @!method password_field_tag(...)
		# 	@return [nil]
		define_output_helper :password_field_tag
	end

	module PathToAsset
		extend Phlex::Rails::HelperMacros

		# @!method path_to_asset(...)
		define_value_helper :path_to_asset
	end

	module PathToAudio
		extend Phlex::Rails::HelperMacros

		# @!method path_to_audio(...)
		define_value_helper :path_to_audio
	end

	module PathToFont
		extend Phlex::Rails::HelperMacros

		# @!method path_to_font(...)
		define_value_helper :path_to_font
	end

	module PathToImage
		extend Phlex::Rails::HelperMacros

		# @!method path_to_image(...)
		define_value_helper :path_to_image
	end

	module PathToJavaScript
		extend Phlex::Rails::HelperMacros

		# @!method path_to_javascript(...)
		define_value_helper :path_to_javascript
	end

	module PathToStyleSheet
		extend Phlex::Rails::HelperMacros

		# @!method path_to_stylesheet(...)
		define_value_helper :path_to_stylesheet
	end

	module PathToVideo
		extend Phlex::Rails::HelperMacros

		# @!method path_to_video(...)
		define_value_helper :path_to_video
	end

	module PhoneField
		extend Phlex::Rails::HelperMacros

		# @!method phone_field(...)
		# 	@return [nil]
		define_output_helper :phone_field
	end

	module PhoneFieldTag
		extend Phlex::Rails::HelperMacros

		# @!method phone_field_tag(...)
		# 	@return [nil]
		define_output_helper :phone_field_tag
	end

	module Pluralize
		extend Phlex::Rails::HelperMacros

		# @!method pluralize(...)
		# 	@return [String]
		define_value_helper :pluralize
	end

	module PreloadLinkTag
		extend Phlex::Rails::HelperMacros

		# @!method preload_link_tag(...)
		# 	@return [nil]
		define_output_helper :preload_link_tag
	end

	module PhoneTo
		extend Phlex::Rails::HelperMacros

		# @!method phone_to(...)
		# 	@return [nil]
		define_output_helper_with_capture_block :phone_to
	end

	module Provide
		extend Phlex::Rails::HelperMacros

		# @!method provide(...)
		define_value_helper_with_capture_block :provide
	end

	module PublicComputeAssetPath
		extend Phlex::Rails::HelperMacros

		# @!method public_compute_asset_path(...)
		define_value_helper :public_compute_asset_path
	end

	module RadioButton
		extend Phlex::Rails::HelperMacros

		# @!method radio_button(...)
		# 	@return [nil]
		define_output_helper :radio_button
	end

	module RadioButtonTag
		extend Phlex::Rails::HelperMacros

		# @!method radio_button_tag(...)
		# 	@return [nil]
		define_output_helper :radio_button_tag
	end

	module RangeField
		extend Phlex::Rails::HelperMacros

		# @!method range_field(...)
		# 	@return [nil]
		define_output_helper :range_field
	end

	module RangeFieldTag
		extend Phlex::Rails::HelperMacros

		# @!method range_field_tag(...)
		# 	@return [nil]
		define_output_helper :range_field_tag
	end

	module ResetCycle
		extend Phlex::Rails::HelperMacros

		# @!method reset_cycle(...)
		define_value_helper :reset_cycle
	end

	module RichTextArea
		extend Phlex::Rails::HelperMacros

		# @!method rich_text_area(...)
		# 	@return [nil]
		define_output_helper :rich_text_area
	end

	module Sanitize
		extend Phlex::Rails::HelperMacros

		# @!method sanitize(...)
		define_value_helper :sanitize
	end

	module SanitizeCss
		extend Phlex::Rails::HelperMacros

		# @!method sanitize_css(...)
		define_value_helper :sanitize_css
	end

	module SearchField
		extend Phlex::Rails::HelperMacros

		# @!method search_field(...)
		# 	@return [nil]
		define_output_helper :search_field
	end

	module SearchFieldTag
		extend Phlex::Rails::HelperMacros

		# @!method search_field_tag(...)
		# 	@return [nil]
		define_output_helper :search_field_tag
	end

	module Select
		extend Phlex::Rails::HelperMacros

		# @!method select(...)
		# 	@return [nil]
		define_output_helper :select
	end

	module SelectTag
		extend Phlex::Rails::HelperMacros

		# @!method select_tag(...)
		# 	@return [nil]
		define_output_helper :select_tag
	end

	module SelectDate
		extend Phlex::Rails::HelperMacros

		# @!method select_date(...)
		# 	@return [nil]
		define_output_helper :select_date
	end

	module SelectDateTime
		extend Phlex::Rails::HelperMacros

		# @!method select_datetime(...)
		# 	@return [nil]
		define_output_helper :select_datetime
	end

	module SelectDay
		extend Phlex::Rails::HelperMacros

		# @!method select_day(...)
		# 	@return [nil]
		define_output_helper :select_day
	end

	module SelectHour
		extend Phlex::Rails::HelperMacros

		# @!method select_hour(...)
		# 	@return [nil]
		define_output_helper :select_hour
	end

	module SelectMinute
		extend Phlex::Rails::HelperMacros

		# @!method select_minute(...)
		# 	@return [nil]
		define_output_helper :select_minute
	end

	module SelectMonth
		extend Phlex::Rails::HelperMacros

		# @!method select_month(...)
		# 	@return [nil]
		define_output_helper :select_month
	end

	module SelectSecond
		extend Phlex::Rails::HelperMacros

		# @!method select_second(...)
		# 	@return [nil]
		define_output_helper :select_second
	end

	module SelectTime
		extend Phlex::Rails::HelperMacros

		# @!method select_time(...)
		# 	@return [nil]
		define_output_helper :select_time
	end

	module SelectYear
		extend Phlex::Rails::HelperMacros

		# @!method select_year(...)
		# 	@return [nil]
		define_output_helper :select_year
	end

	module SimpleFormat
		extend Phlex::Rails::HelperMacros

		# @!method simple_format(...)
		# 	@return [nil]
		define_output_helper :simple_format
	end

	module SMSTo
		extend Phlex::Rails::HelperMacros

		# @!method sms_to(...)
		# 	@return [nil]
		define_output_helper_with_capture_block :sms_to
	end

	module StripLinks
		extend Phlex::Rails::HelperMacros

		# @!method strip_links(...)
		define_value_helper :strip_links
	end

	module StripTags
		extend Phlex::Rails::HelperMacros

		# @!method strip_tags(...)
		define_value_helper :strip_tags
	end

	module StyleSheetLinkTag
		extend Phlex::Rails::HelperMacros

		# @!method stylesheet_link_tag(...)
		# 	@return [nil]
		define_output_helper :stylesheet_link_tag
	end

	module StyleSheetPath
		extend Phlex::Rails::HelperMacros

		# @!method stylesheet_path(...)
		define_value_helper :stylesheet_path
	end

	module StyleSheetURL
		extend Phlex::Rails::HelperMacros

		# @!method stylesheet_url(...)
		define_value_helper :stylesheet_url
	end

	module SubmitTag
		extend Phlex::Rails::HelperMacros

		# @!method submit_tag(...)
		# 	@return [nil]
		define_output_helper :submit_tag
	end

	module T
		extend Phlex::Rails::HelperMacros

		def self.included(base)
			base.extend(ClassMethods)
		end

		module ClassMethods
			def translation_path
				@translation_path ||= name&.dup.tap do |n|
					n.gsub!("::", ".")
					n.gsub!(/([a-z])([A-Z])/, '\1_\2')
					n.downcase!
				end
			end
		end

		def t(key, **options)
			key = "#{self.class.translation_path}#{key}" if key.start_with?(".")

			helpers.t(key, **options)
		end
	end

	module TelephoneField
		extend Phlex::Rails::HelperMacros

		# @!method telephone_field(...)
		# 	@return [nil]
		define_output_helper :telephone_field
	end

	module TelephoneFieldTag
		extend Phlex::Rails::HelperMacros

		# @!method telephone_field_tag(...)
		# 	@return [nil]
		define_output_helper :telephone_field_tag
	end

	module TextArea
		extend Phlex::Rails::HelperMacros

		# @!method text_area(...)
		# 	@return [nil]
		define_output_helper :text_area
	end

	module TextAreaTag
		extend Phlex::Rails::HelperMacros

		# @!method text_area_tag(...)
		# 	@return [nil]
		define_output_helper :text_area_tag
	end

	module TextField
		extend Phlex::Rails::HelperMacros

		# @!method text_field(...)
		# 	@return [nil]
		define_output_helper :text_field
	end

	module TextFieldTag
		extend Phlex::Rails::HelperMacros

		# @!method text_field_tag(...)
		# 	@return [nil]
		define_output_helper :text_field_tag
	end

	module TimeAgoInWords
		extend Phlex::Rails::HelperMacros

		# @!method time_ago_in_words(...)
		define_value_helper :time_ago_in_words
	end

	module TimeField
		extend Phlex::Rails::HelperMacros

		# @!method time_field(...)
		# 	@return [nil]
		define_output_helper :time_field
	end

	module TimeFieldTag
		extend Phlex::Rails::HelperMacros

		# @!method time_field_tag(...)
		# 	@return [nil]
		define_output_helper :time_field_tag
	end

	module TimeSelect
		extend Phlex::Rails::HelperMacros

		# @!method time_select(...)
		# 	@return [nil]
		define_output_helper :time_select
	end

	module TimeTag
		extend Phlex::Rails::HelperMacros

		# @!method time_tag(...)
		# 	@return [nil]
		define_output_helper :time_tag
	end

	module TimeZoneOptionsForSelect
		extend Phlex::Rails::HelperMacros

		# @!method time_zone_options_for_select(...)
		# 	@return [nil]
		define_output_helper :time_zone_options_for_select
	end

	module TimeZoneSelect
		extend Phlex::Rails::HelperMacros

		# @!method time_zone_select(...)
		# 	@return [nil]
		define_output_helper :time_zone_select
	end

	module TokenList
		extend Phlex::Rails::HelperMacros

		# @!method token_list(...)
		define_value_helper :token_list
	end

	module Translate
		extend Phlex::Rails::HelperMacros

		# @!method translate(...)
		define_value_helper :translate
	end

	module Truncate
		extend Phlex::Rails::HelperMacros

		# @!method truncate(...)
		define_value_helper :truncate
	end

	module TurboFrameTag
		extend Phlex::Rails::HelperMacros

		# @!method turbo_frame_tag(...)
		define_output_helper_with_capture_block :turbo_frame_tag
	end

	module TurboIncludeTags
		extend Phlex::Rails::HelperMacros

		# @!method turbo_include_tags(...)
		define_output_helper :turbo_include_tags
	end

	module TurboStreamFrom
		extend Phlex::Rails::HelperMacros

		# @!method turbo_stream_from(...)
		define_output_helper :turbo_stream_from
	end

	module URLField
		extend Phlex::Rails::HelperMacros

		# @!method url_field(...)
		# 	@return [nil]
		define_output_helper :url_field
	end

	module URLFieldTag
		extend Phlex::Rails::HelperMacros

		# @!method url_field_tag(...)
		# 	@return [nil]
		define_output_helper :url_field_tag
	end

	module URLFor
		extend Phlex::Rails::HelperMacros

		# @!method url_for(...)
		define_value_helper :url_for
	end

	module URLOptions
		extend Phlex::Rails::HelperMacros

		# @!method url_options(...)
		define_value_helper :url_options
	end

	module URLToAsset
		extend Phlex::Rails::HelperMacros

		# @!method url_to_asset(...)
		define_value_helper :url_to_asset
	end

	module URLToAudio
		extend Phlex::Rails::HelperMacros

		# @!method url_to_audio(...)
		define_value_helper :url_to_audio
	end

	module URLToFont
		extend Phlex::Rails::HelperMacros

		# @!method url_to_font(...)
		define_value_helper :url_to_font
	end

	module URLToImage
		extend Phlex::Rails::HelperMacros

		# @!method url_to_image(...)
		define_value_helper :url_to_image
	end

	module URLToJavaScript
		extend Phlex::Rails::HelperMacros

		# @!method url_to_javascript(...)
		define_value_helper :url_to_javascript
	end

	module URLToStyleSheet
		extend Phlex::Rails::HelperMacros

		# @!method url_to_stylesheet(...)
		define_value_helper :url_to_stylesheet
	end

	module URLToVideo
		extend Phlex::Rails::HelperMacros

		# @!method url_to_video(...)
		define_value_helper :url_to_video
	end

	module UTF8EnforcerTag
		extend Phlex::Rails::HelperMacros

		# @!method utf8_enforcer_tag(...)
		# 	@return [nil]
		define_output_helper :utf8_enforcer_tag
	end

	module VideoPath
		extend Phlex::Rails::HelperMacros

		# @!method video_path(...)
		define_value_helper :video_path
	end

	module VideoTag
		extend Phlex::Rails::HelperMacros

		# @!method video_tag(...)
		# 	@return [nil]
		define_output_helper :video_tag
	end

	module VideoURL
		extend Phlex::Rails::HelperMacros

		# @!method video_url(...)
		define_value_helper :video_url
	end

	module WeekField
		extend Phlex::Rails::HelperMacros

		# @!method week_field(...)
		# 	@return [nil]
		define_output_helper :week_field
	end

	module WeekFieldTag
		extend Phlex::Rails::HelperMacros

		# @!method week_field_tag(...)
		# 	@return [nil]
		define_output_helper :week_field_tag
	end

	module WeekdayOptionsForSelect
		extend Phlex::Rails::HelperMacros

		# @!method weekday_options_for_select(...)
		# 	@return [nil]
		define_output_helper :weekday_options_for_select
	end

	module WeekdaySelect
		extend Phlex::Rails::HelperMacros

		# @!method weekday_select(...)
		# 	@return [nil]
		define_output_helper :weekday_select
	end

	module WithOutputBuffer
		extend Phlex::Rails::HelperMacros

		# @!method with_output_buffer(...)
		# 	@return [nil]
		define_output_helper_with_capture_block :with_output_buffer
	end

	module WordWrap
		extend Phlex::Rails::HelperMacros

		# @!method word_wrap(...)
		define_value_helper :word_wrap
	end
end
