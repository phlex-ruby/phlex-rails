# frozen_string_literal: true

class Phlex::Rails::Never < BasicObject
	def initialize(&block)
		@block = block
	end

	def method_missing(method_name, *, **)
		@block.call(method_name, *, **)
	end
end
