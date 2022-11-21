# frozen_string_literal: true

module Phlex
	module Rails
		# A wrapper for Rails’ OutputBuffer that acts like a Phlex buffer.

		class Buffer < SimpleDelegator
			def <<(value)
				__getobj__.safe_append = (value)
				self
			end

			def length
				__getobj__.length
			end
		end
	end
end
