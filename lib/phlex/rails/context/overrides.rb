# frozen_string_literal: true

module Phlex
	module Rails
		module Context
			module Overrides
				def initialize(...)
					super
					@view_context = nil
				end

				attr_accessor :view_context
			end
		end
	end
end
