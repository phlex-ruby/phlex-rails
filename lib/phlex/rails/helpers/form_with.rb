# frozen_string_literal: true

module Phlex::Rails::Helpers::FormWith
	class BufferedFormWith < Phlex::Buffered
		alias_method :check_box, :__output_method__
		alias_method :collection_check_boxes, :__output_method__
		alias_method :collection_radio_buttons, :__output_method__
		alias_method :collection_select, :__output_method__
		alias_method :color_field, :__output_method__
		alias_method :date_field, :__output_method__
		alias_method :date_select, :__output_method__
		alias_method :datetime_field, :__output_method__
		alias_method :datetime_local_field, :__output_method__
		alias_method :datetime_select, :__output_method__
		alias_method :email_field, :__output_method__
		alias_method :file_field, :__output_method__
		alias_method :grouped_collection_select, :__output_method__
		alias_method :hidden_field, :__output_method__
		alias_method :label, :__output_method__
		alias_method :month_field, :__output_method__
		alias_method :number_field, :__output_method__
		alias_method :password_field, :__output_method__
		alias_method :phone_field, :__output_method__
		alias_method :radio_button, :__output_method__
		alias_method :range_field, :__output_method__
		alias_method :search_field, :__output_method__
		alias_method :select, :__output_method__
		alias_method :submit, :__output_method__
		alias_method :telephone_field, :__output_method__
		alias_method :text_area, :__output_method__
		alias_method :text_field, :__output_method__
		alias_method :time_field, :__output_method__
		alias_method :time_select, :__output_method__
		alias_method :time_zone_select, :__output_method__
		alias_method :url_field, :__output_method__
		alias_method :week_field, :__output_method__
		alias_method :weekday_select, :__output_method__
		alias_method :button, :__output_method__
		alias_method :rich_text_area, :__output_method__
	end

	def form_with(*args, **kwargs, &block)
		unsafe_raw helpers.form_with(*args, **kwargs) { |form|
			capture do
				yield(
					BufferedFormWith.new(form, buffer: @_target)
				)
			end.html_safe
		}
	end
end
