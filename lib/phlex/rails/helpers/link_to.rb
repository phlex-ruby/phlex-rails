# frozen_string_literal: true

module Phlex::Rails::Helpers::LinkTo
	extend Phlex::Rails::HelperMacros

	def link_to(*args, **kwargs, &block)
		context = @_context

		if context.fragments && !context.in_target_fragment && !context.fragments[kwargs[:id]]
			return nil
		end

		output = if block
			helpers.link_to(*args, **kwargs) { capture(&block) }
		else
			helpers.link_to(*args, **kwargs)
		end

		return unless ActiveSupport::SafeBuffer === output

		context.target << output
	end
end
