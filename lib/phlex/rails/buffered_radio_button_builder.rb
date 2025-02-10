# frozen_string_literal: true

module Phlex::Rails
	class BufferedRadioButtonBuilder < Buffered
		def_delegators :@object,
			:object,
			:text,
			:value
	end
end
