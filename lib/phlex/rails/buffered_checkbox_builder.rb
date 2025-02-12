# frozen_string_literal: true

module Phlex::Rails
	class BufferedCheckboxBuilder < Buffered
		def_delegators :@object,
			:object,
			:text,
			:value
	end
end
