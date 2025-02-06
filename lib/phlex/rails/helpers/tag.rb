# frozen_string_literal: true

module Phlex::Rails::Helpers::Tag
	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/TagHelper.html#method-i-tag)
	def tag(...)
		result = helpers.tag(...)

		case result
		when ActiveSupport::SafeBuffer
			@_state.buffer << result
		when ActionView::Helpers::TagHelper::TagBuilder
			Phlex::Rails::Buffered.new(
				result,
				view: self,
			)
		end
	end
end
