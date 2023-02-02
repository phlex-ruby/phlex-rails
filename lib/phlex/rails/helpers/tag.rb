# frozen_string_literal: true

module Phlex::Rails::Helpers::Tag
	def tag(...)
		result = helpers.tag(...)

		case result
		when ActiveSupport::SafeBuffer
			@_target << result
		when ActionView::Helpers::TagHelper::TagBuilder
			Phlex::Rails::Buffered.new(
				result,
				buffer: @_target,
				view: self
			)
		end
	end
end
