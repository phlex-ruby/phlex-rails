# frozen_string_literal: true

module Phlex::Rails::Helpers::LinkTo
	def link_to(*args, **kwargs, &block)
		if block
			unsafe_raw helpers.link_to(*args, **kwargs) { capture(&block) }
		else
			unsafe_raw helpers.link_to(*args, **kwargs)
		end
	end
end
