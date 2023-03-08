# frozen_string_literal: true

# An adapter for the <code>tag</code> helper.
# @note This helper is provided for completeness, but you should probably use Phlex tag methods directly instead.
module Phlex::Rails::Helpers::Tag
	# Builds HTML tags
	# @see https://api.rubyonrails.org/classes/ActionView/Helpers/TagHelper.html#method-i-tag
	def tag(...)
		result = helpers.tag(...)

		case result
		when ActiveSupport::SafeBuffer
			@_context.target << result
		when ActionView::Helpers::TagHelper::TagBuilder
			Phlex::Rails::Buffered.new(
				result,
				view: self
			)
		end
	end
end
