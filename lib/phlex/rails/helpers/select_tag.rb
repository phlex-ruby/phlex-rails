# frozen_string_literal: true

module Phlex::Rails::Helpers::SelectTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-select_tag)
	# register_output_helper def select_tag(...) = nil

	def select_tag(name, *, **, &block)
		output = if block
			view_context.select_tag(name, capture(&block), *, **)
		else
			view_context.select_tag(name, *, **)
		end

		raw(output)
	end
end
