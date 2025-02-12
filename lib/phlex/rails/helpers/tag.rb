# frozen_string_literal: true

module Phlex::Rails::Helpers::Tag
	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/TagHelper.html#method-i-tag)
	def tag(...)
		result = view_context.tag(...)

		case result
		when ActiveSupport::SafeBuffer
			raw(result)
		when ActionView::Helpers::TagHelper::TagBuilder
			Phlex::Rails::Buffered.new(
				result,
				component: self,
			)
		end
	end
end
