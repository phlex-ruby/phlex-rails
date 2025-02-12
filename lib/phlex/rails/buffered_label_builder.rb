# frozen_string_literal: true

module Phlex::Rails
	class BufferedLabelBuilder < Buffered
		def_delegators :@object,
			:object,
			:translation
	end
end
