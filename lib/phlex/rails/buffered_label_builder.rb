# frozen_string_literal: true

module Phlex::Rails
	# @api private
	class BufferedLabelBuilder < Buffered
		# @!method object(...)
		# @!method translation(...)
		def_delegators :@object,
			:object,
			:translation
	end
end
