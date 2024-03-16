# frozen_string_literal: true

module Phlex::Rails::Helpers
	autoload :ActionCableMetaTag, "phlex/rails/helpers/action_cable_meta_tag"
	autoload :ActionName, "phlex/rails/helpers/action_name"
	autoload :AssetPath, "phlex/rails/helpers/asset_path"
	autoload :AssetURL, "phlex/rails/helpers/asset_url"
	autoload :AudioPath, "phlex/rails/helpers/audio_path"
	autoload :AudioTag, "phlex/rails/helpers/audio_tag"
	autoload :AudioURL, "phlex/rails/helpers/audio_url"
	autoload :AutoDiscoveryLinkTag, "phlex/rails/helpers/auto_discovery_link_tag"
	autoload :BuildTagValues, "phlex/rails/helpers/build_tag_values"
	autoload :ButtonTag, "phlex/rails/helpers/button_tag"
	autoload :ButtonTo, "phlex/rails/helpers/button_to"
	autoload :CSPMetaTag, "phlex/rails/helpers/csp_meta_tag"
	autoload :CSRFMetaTags, "phlex/rails/helpers/csrf_meta_tags"
	autoload :CheckBox, "phlex/rails/helpers/check_box"
	autoload :CheckBoxTag, "phlex/rails/helpers/check_box_tag"
	autoload :Checkbox, "phlex/rails/helpers/checkbox" # DEPRECATED
	autoload :CheckboxTag, "phlex/rails/helpers/checkbox_tag" # DEPRECATED
	autoload :ClassNames, "phlex/rails/helpers/class_names"
	autoload :CollectionCheckBoxes, "phlex/rails/helpers/collection_check_boxes"
	autoload :CollectionCheckboxes, "phlex/rails/helpers/collection_checkboxes" # DEPRECATED
	autoload :CollectionRadioButtons, "phlex/rails/helpers/collection_radio_buttons"
	autoload :CollectionSelect, "phlex/rails/helpers/collection_select"
	autoload :ColorField, "phlex/rails/helpers/color_field"
	autoload :ColorFieldTag, "phlex/rails/helpers/color_field_tag"
	autoload :ComputeAssetExtname, "phlex/rails/helpers/compute_asset_extname"
	autoload :ComputeAssetHost, "phlex/rails/helpers/compute_asset_host"
	autoload :ComputeAssetPath, "phlex/rails/helpers/compute_asset_path"
	autoload :ContentFor, "phlex/rails/helpers/content_for"
	autoload :ContentTag, "phlex/rails/helpers/content_tag"
	autoload :ControllerName, "phlex/rails/helpers/controller_name"
	autoload :ControllerPath, "phlex/rails/helpers/controller_path"
	autoload :CurrentCycle, "phlex/rails/helpers/current_cycle"
	autoload :CurrentPage, "phlex/rails/helpers/current_page"
	autoload :Cycle, "phlex/rails/helpers/cycle"
	autoload :DOMClass, "phlex/rails/helpers/dom_class"
	autoload :DOMID, "phlex/rails/helpers/dom_id"
	autoload :DateField, "phlex/rails/helpers/date_field"
	autoload :DateFieldTag, "phlex/rails/helpers/date_field_tag"
	autoload :DateSelect, "phlex/rails/helpers/date_select"
	autoload :DateTimeField, "phlex/rails/helpers/date_time_field" # DEPRECATED
	autoload :DateTimeFieldTag, "phlex/rails/helpers/date_time_field_tag" # DEPRECATED
	autoload :DateTimeLocalField, "phlex/rails/helpers/date_time_local_field" # DEPRECATED
	autoload :DateTimeLocalFieldTag, "phlex/rails/helpers/date_time_local_field_tag" # DEPRECATED
	autoload :DateTimeSelect, "phlex/rails/helpers/date_time_select" # DEPRECATED
	autoload :DatetimeField, "phlex/rails/helpers/datetime_field"
	autoload :DatetimeFieldTag, "phlex/rails/helpers/datetime_field_tag"
	autoload :DatetimeLocalField, "phlex/rails/helpers/datetime_local_field"
	autoload :DatetimeLocalFieldTag, "phlex/rails/helpers/datetime_local_field_tag"
	autoload :DatetimeSelect, "phlex/rails/helpers/datetime_select"
	autoload :Debug, "phlex/rails/helpers/debug"
	autoload :DefaultURLOptions, "phlex/rails/helpers/default_url_options"
	autoload :DistanceOfTimeInWords, "phlex/rails/helpers/distance_of_time_in_words"
	autoload :DistanceOfTimeInWordsToNow, "phlex/rails/helpers/distance_of_time_in_words_to_now"
	autoload :EmailField, "phlex/rails/helpers/email_field"
	autoload :EmailFieldTag, "phlex/rails/helpers/email_field_tag"
	autoload :ErrorMessage, "phlex/rails/helpers/error_message"
	autoload :ErrorWrapping, "phlex/rails/helpers/error_wrapping"
	autoload :EscapeOnce, "phlex/rails/helpers/escape_once"
	autoload :Excerpt, "phlex/rails/helpers/excerpt"
	autoload :FaviconLinkTag, "phlex/rails/helpers/favicon_link_tag"
	autoload :FieldID, "phlex/rails/helpers/field_id"
	autoload :FieldName, "phlex/rails/helpers/field_name"
	autoload :FieldSetTag, "phlex/rails/helpers/field_set_tag"
	autoload :Fields, "phlex/rails/helpers/fields"
	autoload :FieldsFor, "phlex/rails/helpers/fields_for"
	autoload :FileField, "phlex/rails/helpers/file_field"
	autoload :FileFieldTag, "phlex/rails/helpers/file_field_tag"
	autoload :Flash, "phlex/rails/helpers/flash"
	autoload :FontPath, "phlex/rails/helpers/font_path"
	autoload :FontURL, "phlex/rails/helpers/font_url"
	autoload :FormFor, "phlex/rails/helpers/form_for"
	autoload :FormTag, "phlex/rails/helpers/form_tag"
	autoload :FormWith, "phlex/rails/helpers/form_with"
	autoload :GroupedCollectionSelect, "phlex/rails/helpers/grouped_collection_select"
	autoload :GroupedOptionsForSelect, "phlex/rails/helpers/grouped_options_for_select"
	autoload :HiddenField, "phlex/rails/helpers/hidden_field"
	autoload :HiddenFieldTag, "phlex/rails/helpers/hidden_field_tag"
	autoload :Highlight, "phlex/rails/helpers/highlight"
	autoload :ImagePath, "phlex/rails/helpers/image_path"
	autoload :ImageSubmitTag, "phlex/rails/helpers/image_submit_tag"
	autoload :ImageTag, "phlex/rails/helpers/image_tag"
	autoload :ImageURL, "phlex/rails/helpers/image_url"
	autoload :JavaScriptImportMapTags, "phlex/rails/helpers/java_script_import_map_tags" # DEPRECATED
	autoload :JavaScriptImportModuleTag, "phlex/rails/helpers/java_script_import_module_tag" # DEPRECATED
	autoload :JavaScriptIncludeTag, "phlex/rails/helpers/java_script_include_tag" # DEPRECATED
	autoload :JavaScriptPath, "phlex/rails/helpers/java_script_path" # DEPRECATED
	autoload :JavaScriptTag, "phlex/rails/helpers/java_script_tag" # DEPRECATED
	autoload :JavaScriptURL, "phlex/rails/helpers/java_script_url" # DEPRECATED
	autoload :JavascriptImportModuleTag, "phlex/rails/helpers/javascript_import_module_tag"
	autoload :JavascriptImportmapTags, "phlex/rails/helpers/javascript_importmap_tags"
	autoload :JavascriptIncludeTag, "phlex/rails/helpers/javascript_include_tag"
	autoload :JavascriptPath, "phlex/rails/helpers/javascript_path"
	autoload :JavascriptTag, "phlex/rails/helpers/javascript_tag"
	autoload :JavascriptURL, "phlex/rails/helpers/javascript_url"
	autoload :Routes, "phlex/rails/helpers/routes"
	autoload :Tag, "phlex/rails/helpers/tag"
	autoload :TurboStream, "phlex/rails/helpers/turbo_stream"
end

module Phlex::Rails::Helpers::L
	extend Phlex::Rails::HelperMacros

	# @!method l(...)
	define_value_helper :l
end

module Phlex::Rails::Helpers::Label
	extend Phlex::Rails::HelperMacros

	# @!method label(...)
	define_builder_yielding_helper :label, Phlex::Rails::BufferedLabelBuilder
end

module Phlex::Rails::Helpers::LabelTag
	extend Phlex::Rails::HelperMacros

	# @!method label_tag(...)
	# 	@return [nil]
	define_output_helper_with_capture_block :label_tag
end

module Phlex::Rails::Helpers::LinkTo
	extend Phlex::Rails::HelperMacros

	# @!method link_to(...)
	# 	@return [nil]
	define_output_helper_with_capture_block :link_to
end

module Phlex::Rails::Helpers::LinkIf
	extend Phlex::Rails::HelperMacros

	# @!method link_to_if(...)
	# 	@return [nil]
	define_output_helper_with_capture_block :link_to_if
end

module Phlex::Rails::Helpers::LinkToUnless
	extend Phlex::Rails::HelperMacros

	# @!method link_to_unless(...)
	# 	@return [nil]
	define_output_helper_with_capture_block :link_to_unless
end

module Phlex::Rails::Helpers::LinkToUnlessCurrent
	extend Phlex::Rails::HelperMacros

	# @!method link_to_unless_current(...)
	# 	@return [nil]
	define_output_helper_with_capture_block :link_to_unless_current
end

module Phlex::Rails::Helpers::Localize
	extend Phlex::Rails::HelperMacros

	# @!method localize(...)
	define_value_helper :localize
end

module Phlex::Rails::Helpers::MailTo
	extend Phlex::Rails::HelperMacros

	# @!method mail_to(...)
	# 	@return [nil]
	define_output_helper_with_capture_block :mail_to
end

module Phlex::Rails::Helpers::MonthField
	extend Phlex::Rails::HelperMacros

	# @!method month_field(...)
	# 	@return [nil]
	define_output_helper :month_field
end

module Phlex::Rails::Helpers::MonthFieldTag
	extend Phlex::Rails::HelperMacros

	# @!method month_field_tag(...)
	# 	@return [nil]
	define_output_helper :month_field_tag
end

module Phlex::Rails::Helpers::NumberField
	extend Phlex::Rails::HelperMacros

	# @!method number_field(...)
	# 	@return [nil]
	define_output_helper :number_field
end

module Phlex::Rails::Helpers::NumberFieldTag
	extend Phlex::Rails::HelperMacros

	# @!method number_field_tag(...)
	# 	@return [nil]
	define_output_helper :number_field_tag
end

module Phlex::Rails::Helpers::NumberToCurrency
	extend Phlex::Rails::HelperMacros

	# @!method number_to_currency(...)
	define_value_helper :number_to_currency
end

module Phlex::Rails::Helpers::NumberToHuman
	extend Phlex::Rails::HelperMacros

	# @!method number_to_human(...)
	define_value_helper :number_to_human
end

module Phlex::Rails::Helpers::NumberToHumanSize
	extend Phlex::Rails::HelperMacros

	# @!method number_to_human_size(...)
	define_value_helper :number_to_human_size
end

module Phlex::Rails::Helpers::NumberToPercentage
	extend Phlex::Rails::HelperMacros

	# @!method number_to_percentage(...)
	define_value_helper :number_to_percentage
end

module Phlex::Rails::Helpers::NumberToPhone
	extend Phlex::Rails::HelperMacros

	# @!method number_to_phone(...)
	define_value_helper :number_to_phone
end

module Phlex::Rails::Helpers::NumberWithDelimiter
	extend Phlex::Rails::HelperMacros

	# @!method number_with_delimiter(...)
	define_value_helper :number_with_delimiter
end

module Phlex::Rails::Helpers::NumberWithPrecision
	extend Phlex::Rails::HelperMacros

	# @!method number_with_precision(...)
	define_value_helper :number_with_precision
end

module Phlex::Rails::Helpers::Object
	extend Phlex::Rails::HelperMacros

	# @!method object(...)
	define_value_helper :object
end

module Phlex::Rails::Helpers::OptionGroupsFromCollectionForSelect
	extend Phlex::Rails::HelperMacros

	# @!method option_groups_from_collection_for_select(...)
	# 	@return [nil]
	define_output_helper :option_groups_from_collection_for_select
end

module Phlex::Rails::Helpers::OptionsForSelect
	extend Phlex::Rails::HelperMacros

	# @!method options_for_select(...)
	# 	@return [nil]
	define_output_helper :options_for_select
end

module Phlex::Rails::Helpers::OptionsFromCollectionForSelect
	extend Phlex::Rails::HelperMacros

	# @!method options_from_collection_for_select(...)
	# 	@return [nil]
	define_output_helper :options_from_collection_for_select
end

module Phlex::Rails::Helpers::PasswordField
	extend Phlex::Rails::HelperMacros

	# @!method password_field(...)
	# 	@return [nil]
	define_output_helper :password_field
end

module Phlex::Rails::Helpers::PasswordFieldTag
	extend Phlex::Rails::HelperMacros

	# @!method password_field_tag(...)
	# 	@return [nil]
	define_output_helper :password_field_tag
end

module Phlex::Rails::Helpers::PathToAsset
	extend Phlex::Rails::HelperMacros

	# @!method path_to_asset(...)
	define_value_helper :path_to_asset
end

module Phlex::Rails::Helpers::PathToAudio
	extend Phlex::Rails::HelperMacros

	# @!method path_to_audio(...)
	define_value_helper :path_to_audio
end

module Phlex::Rails::Helpers::PathToFont
	extend Phlex::Rails::HelperMacros

	# @!method path_to_font(...)
	define_value_helper :path_to_font
end

module Phlex::Rails::Helpers::PathToImage
	extend Phlex::Rails::HelperMacros

	# @!method path_to_image(...)
	define_value_helper :path_to_image
end

module Phlex::Rails::Helpers::PathToJavaScript
	extend Phlex::Rails::HelperMacros

	# @!method path_to_javascript(...)
	define_value_helper :path_to_javascript
end

module Phlex::Rails::Helpers::PathToStyleSheet
	extend Phlex::Rails::HelperMacros

	# @!method path_to_stylesheet(...)
	define_value_helper :path_to_stylesheet
end

module Phlex::Rails::Helpers::PathToVideo
	extend Phlex::Rails::HelperMacros

	# @!method path_to_video(...)
	define_value_helper :path_to_video
end

module Phlex::Rails::Helpers::PhoneField
	extend Phlex::Rails::HelperMacros

	# @!method phone_field(...)
	# 	@return [nil]
	define_output_helper :phone_field
end

module Phlex::Rails::Helpers::PhoneFieldTag
	extend Phlex::Rails::HelperMacros

	# @!method phone_field_tag(...)
	# 	@return [nil]
	define_output_helper :phone_field_tag
end

module Phlex::Rails::Helpers::Pluralize
	extend Phlex::Rails::HelperMacros

	# @!method pluralize(...)
	# 	@return [String]
	define_value_helper :pluralize
end

module Phlex::Rails::Helpers::PreloadLinkTag
	extend Phlex::Rails::HelperMacros

	# @!method preload_link_tag(...)
	# 	@return [nil]
	define_output_helper :preload_link_tag
end

module Phlex::Rails::Helpers::PhoneTo
	extend Phlex::Rails::HelperMacros

	# @!method phone_to(...)
	# 	@return [nil]
	define_output_helper_with_capture_block :phone_to
end

module Phlex::Rails::Helpers::Provide
	extend Phlex::Rails::HelperMacros

	# @!method provide(...)
	define_value_helper_with_capture_block :provide
end

module Phlex::Rails::Helpers::PublicComputeAssetPath
	extend Phlex::Rails::HelperMacros

	# @!method public_compute_asset_path(...)
	define_value_helper :public_compute_asset_path
end

module Phlex::Rails::Helpers::RadioButton
	extend Phlex::Rails::HelperMacros

	# @!method radio_button(...)
	# 	@return [nil]
	define_output_helper :radio_button
end

module Phlex::Rails::Helpers::RadioButtonTag
	extend Phlex::Rails::HelperMacros

	# @!method radio_button_tag(...)
	# 	@return [nil]
	define_output_helper :radio_button_tag
end

module Phlex::Rails::Helpers::RangeField
	extend Phlex::Rails::HelperMacros

	# @!method range_field(...)
	# 	@return [nil]
	define_output_helper :range_field
end

module Phlex::Rails::Helpers::RangeFieldTag
	extend Phlex::Rails::HelperMacros

	# @!method range_field_tag(...)
	# 	@return [nil]
	define_output_helper :range_field_tag
end

module Phlex::Rails::Helpers::Request
	extend Phlex::Rails::HelperMacros

	# @!method request(...)
	define_value_helper :request
end

module Phlex::Rails::Helpers::ResetCycle
	extend Phlex::Rails::HelperMacros

	# @!method reset_cycle(...)
	define_value_helper :reset_cycle
end

module Phlex::Rails::Helpers::RichTextArea
	extend Phlex::Rails::HelperMacros

	# @!method rich_text_area(...)
	# 	@return [nil]
	define_output_helper :rich_text_area
end

module Phlex::Rails::Helpers::Sanitize
	extend Phlex::Rails::HelperMacros

	# @!method sanitize(...)
	define_value_helper :sanitize
end

module Phlex::Rails::Helpers::SanitizeCss
	extend Phlex::Rails::HelperMacros

	# @!method sanitize_css(...)
	define_value_helper :sanitize_css
end

module Phlex::Rails::Helpers::SearchField
	extend Phlex::Rails::HelperMacros

	# @!method search_field(...)
	# 	@return [nil]
	define_output_helper :search_field
end

module Phlex::Rails::Helpers::SearchFieldTag
	extend Phlex::Rails::HelperMacros

	# @!method search_field_tag(...)
	# 	@return [nil]
	define_output_helper :search_field_tag
end

module Phlex::Rails::Helpers::Select
	extend Phlex::Rails::HelperMacros

	# @!method select(...)
	# 	@return [nil]
	define_output_helper :select
end

module Phlex::Rails::Helpers::SelectTag
	extend Phlex::Rails::HelperMacros

	# @!method select_tag(...)
	# 	@return [nil]
	define_output_helper :select_tag
end

module Phlex::Rails::Helpers::SelectDate
	extend Phlex::Rails::HelperMacros

	# @!method select_date(...)
	# 	@return [nil]
	define_output_helper :select_date
end

module Phlex::Rails::Helpers::SelectDateTime
	extend Phlex::Rails::HelperMacros

	# @!method select_datetime(...)
	# 	@return [nil]
	define_output_helper :select_datetime
end

module Phlex::Rails::Helpers::SelectDay
	extend Phlex::Rails::HelperMacros

	# @!method select_day(...)
	# 	@return [nil]
	define_output_helper :select_day
end

module Phlex::Rails::Helpers::SelectHour
	extend Phlex::Rails::HelperMacros

	# @!method select_hour(...)
	# 	@return [nil]
	define_output_helper :select_hour
end

module Phlex::Rails::Helpers::SelectMinute
	extend Phlex::Rails::HelperMacros

	# @!method select_minute(...)
	# 	@return [nil]
	define_output_helper :select_minute
end

module Phlex::Rails::Helpers::SelectMonth
	extend Phlex::Rails::HelperMacros

	# @!method select_month(...)
	# 	@return [nil]
	define_output_helper :select_month
end

module Phlex::Rails::Helpers::SelectSecond
	extend Phlex::Rails::HelperMacros

	# @!method select_second(...)
	# 	@return [nil]
	define_output_helper :select_second
end

module Phlex::Rails::Helpers::SelectTime
	extend Phlex::Rails::HelperMacros

	# @!method select_time(...)
	# 	@return [nil]
	define_output_helper :select_time
end

module Phlex::Rails::Helpers::SelectYear
	extend Phlex::Rails::HelperMacros

	# @!method select_year(...)
	# 	@return [nil]
	define_output_helper :select_year
end

module Phlex::Rails::Helpers::SimpleFormat
	extend Phlex::Rails::HelperMacros

	# @!method simple_format(...)
	# 	@return [nil]
	define_output_helper :simple_format
end

module Phlex::Rails::Helpers::SMSTo
	extend Phlex::Rails::HelperMacros

	# @!method sms_to(...)
	# 	@return [nil]
	define_output_helper_with_capture_block :sms_to
end

module Phlex::Rails::Helpers::StripLinks
	extend Phlex::Rails::HelperMacros

	# @!method strip_links(...)
	define_value_helper :strip_links
end

module Phlex::Rails::Helpers::StripTags
	extend Phlex::Rails::HelperMacros

	# @!method strip_tags(...)
	define_value_helper :strip_tags
end

module Phlex::Rails::Helpers::StyleSheetLinkTag
	extend Phlex::Rails::HelperMacros

	# @!method stylesheet_link_tag(...)
	# 	@return [nil]
	define_output_helper :stylesheet_link_tag
end

module Phlex::Rails::Helpers::StyleSheetPath
	extend Phlex::Rails::HelperMacros

	# @!method stylesheet_path(...)
	define_value_helper :stylesheet_path
end

module Phlex::Rails::Helpers::StyleSheetURL
	extend Phlex::Rails::HelperMacros

	# @!method stylesheet_url(...)
	define_value_helper :stylesheet_url
end

module Phlex::Rails::Helpers::SubmitTag
	extend Phlex::Rails::HelperMacros

	# @!method submit_tag(...)
	# 	@return [nil]
	define_output_helper :submit_tag
end

module Phlex::Rails::Helpers::T
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

module Phlex::Rails::Helpers::TelephoneField
	extend Phlex::Rails::HelperMacros

	# @!method telephone_field(...)
	# 	@return [nil]
	define_output_helper :telephone_field
end

module Phlex::Rails::Helpers::TelephoneFieldTag
	extend Phlex::Rails::HelperMacros

	# @!method telephone_field_tag(...)
	# 	@return [nil]
	define_output_helper :telephone_field_tag
end

module Phlex::Rails::Helpers::TextArea
	extend Phlex::Rails::HelperMacros

	# @!method text_area(...)
	# 	@return [nil]
	define_output_helper :text_area
end

module Phlex::Rails::Helpers::TextAreaTag
	extend Phlex::Rails::HelperMacros

	# @!method text_area_tag(...)
	# 	@return [nil]
	define_output_helper :text_area_tag
end

module Phlex::Rails::Helpers::TextField
	extend Phlex::Rails::HelperMacros

	# @!method text_field(...)
	# 	@return [nil]
	define_output_helper :text_field
end

module Phlex::Rails::Helpers::TextFieldTag
	extend Phlex::Rails::HelperMacros

	# @!method text_field_tag(...)
	# 	@return [nil]
	define_output_helper :text_field_tag
end

module Phlex::Rails::Helpers::TimeAgoInWords
	extend Phlex::Rails::HelperMacros

	# @!method time_ago_in_words(...)
	define_value_helper :time_ago_in_words
end

module Phlex::Rails::Helpers::TimeField
	extend Phlex::Rails::HelperMacros

	# @!method time_field(...)
	# 	@return [nil]
	define_output_helper :time_field
end

module Phlex::Rails::Helpers::TimeFieldTag
	extend Phlex::Rails::HelperMacros

	# @!method time_field_tag(...)
	# 	@return [nil]
	define_output_helper :time_field_tag
end

module Phlex::Rails::Helpers::TimeSelect
	extend Phlex::Rails::HelperMacros

	# @!method time_select(...)
	# 	@return [nil]
	define_output_helper :time_select
end

module Phlex::Rails::Helpers::TimeTag
	extend Phlex::Rails::HelperMacros

	# @!method time_tag(...)
	# 	@return [nil]
	define_output_helper :time_tag
end

module Phlex::Rails::Helpers::TimeZoneOptionsForSelect
	extend Phlex::Rails::HelperMacros

	# @!method time_zone_options_for_select(...)
	# 	@return [nil]
	define_output_helper :time_zone_options_for_select
end

module Phlex::Rails::Helpers::TimeZoneSelect
	extend Phlex::Rails::HelperMacros

	# @!method time_zone_select(...)
	# 	@return [nil]
	define_output_helper :time_zone_select
end

module Phlex::Rails::Helpers::TokenList
	extend Phlex::Rails::HelperMacros

	# @!method token_list(...)
	define_value_helper :token_list
end

module Phlex::Rails::Helpers::Translate
	extend Phlex::Rails::HelperMacros

	# @!method translate(...)
	define_value_helper :translate
end

module Phlex::Rails::Helpers::Truncate
	extend Phlex::Rails::HelperMacros

	# @!method truncate(...)
	define_value_helper :truncate
end

module Phlex::Rails::Helpers::TurboFrameTag
	extend Phlex::Rails::HelperMacros

	# @!method turbo_frame_tag(...)
	define_output_helper_with_capture_block :turbo_frame_tag
end

module Phlex::Rails::Helpers::TurboIncludeTags
	extend Phlex::Rails::HelperMacros

	# @!method turbo_include_tags(...)
	define_output_helper :turbo_include_tags
end

module Phlex::Rails::Helpers::TurboStreamFrom
	extend Phlex::Rails::HelperMacros

	# @!method turbo_stream_from(...)
	define_output_helper :turbo_stream_from
end

module Phlex::Rails::Helpers::URLField
	extend Phlex::Rails::HelperMacros

	# @!method url_field(...)
	# 	@return [nil]
	define_output_helper :url_field
end

module Phlex::Rails::Helpers::URLFieldTag
	extend Phlex::Rails::HelperMacros

	# @!method url_field_tag(...)
	# 	@return [nil]
	define_output_helper :url_field_tag
end

module Phlex::Rails::Helpers::URLFor
	extend Phlex::Rails::HelperMacros

	# @!method url_for(...)
	define_value_helper :url_for
end

module Phlex::Rails::Helpers::URLOptions
	extend Phlex::Rails::HelperMacros

	# @!method url_options(...)
	define_value_helper :url_options
end

module Phlex::Rails::Helpers::URLToAsset
	extend Phlex::Rails::HelperMacros

	# @!method url_to_asset(...)
	define_value_helper :url_to_asset
end

module Phlex::Rails::Helpers::URLToAudio
	extend Phlex::Rails::HelperMacros

	# @!method url_to_audio(...)
	define_value_helper :url_to_audio
end

module Phlex::Rails::Helpers::URLToFont
	extend Phlex::Rails::HelperMacros

	# @!method url_to_font(...)
	define_value_helper :url_to_font
end

module Phlex::Rails::Helpers::URLToImage
	extend Phlex::Rails::HelperMacros

	# @!method url_to_image(...)
	define_value_helper :url_to_image
end

module Phlex::Rails::Helpers::URLToJavaScript
	extend Phlex::Rails::HelperMacros

	# @!method url_to_javascript(...)
	define_value_helper :url_to_javascript
end

module Phlex::Rails::Helpers::URLToStyleSheet
	extend Phlex::Rails::HelperMacros

	# @!method url_to_stylesheet(...)
	define_value_helper :url_to_stylesheet
end

module Phlex::Rails::Helpers::URLToVideo
	extend Phlex::Rails::HelperMacros

	# @!method url_to_video(...)
	define_value_helper :url_to_video
end

module Phlex::Rails::Helpers::UTF8EnforcerTag
	extend Phlex::Rails::HelperMacros

	# @!method utf8_enforcer_tag(...)
	# 	@return [nil]
	define_output_helper :utf8_enforcer_tag
end

module Phlex::Rails::Helpers::VideoPath
	extend Phlex::Rails::HelperMacros

	# @!method video_path(...)
	define_value_helper :video_path
end

module Phlex::Rails::Helpers::VideoTag
	extend Phlex::Rails::HelperMacros

	# @!method video_tag(...)
	# 	@return [nil]
	define_output_helper :video_tag
end

module Phlex::Rails::Helpers::VideoURL
	extend Phlex::Rails::HelperMacros

	# @!method video_url(...)
	define_value_helper :video_url
end

module Phlex::Rails::Helpers::WeekField
	extend Phlex::Rails::HelperMacros

	# @!method week_field(...)
	# 	@return [nil]
	define_output_helper :week_field
end

module Phlex::Rails::Helpers::WeekFieldTag
	extend Phlex::Rails::HelperMacros

	# @!method week_field_tag(...)
	# 	@return [nil]
	define_output_helper :week_field_tag
end

module Phlex::Rails::Helpers::WeekdayOptionsForSelect
	extend Phlex::Rails::HelperMacros

	# @!method weekday_options_for_select(...)
	# 	@return [nil]
	define_output_helper :weekday_options_for_select
end

module Phlex::Rails::Helpers::WeekdaySelect
	extend Phlex::Rails::HelperMacros

	# @!method weekday_select(...)
	# 	@return [nil]
	define_output_helper :weekday_select
end

module Phlex::Rails::Helpers::WithOutputBuffer
	extend Phlex::Rails::HelperMacros

	# @!method with_output_buffer(...)
	# 	@return [nil]
	define_output_helper_with_capture_block :with_output_buffer
end

module Phlex::Rails::Helpers::WordWrap
	extend Phlex::Rails::HelperMacros

	# @!method word_wrap(...)
	define_value_helper :word_wrap
end
