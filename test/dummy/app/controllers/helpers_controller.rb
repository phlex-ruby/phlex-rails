# frozen_string_literal: true

class HelpersController < ApplicationController
	layout false

	def form_with
		render Helpers::FormWithView.new
	end

	def tag
		render Helpers::TagView.new
	end

	def missing_helper
		render Helpers::MissingHelperView.new
	end

	def notice_test # can't use 'notice' as the method name because it interferes with https://api.rubyonrails.org/v7.1.3.4/classes/ActionController/Flash/ClassMethods.html#method-i-add_flash_types
		flash.now.notice = "My Flash Notice"
		render Helpers::NoticeView.new
	end
end
