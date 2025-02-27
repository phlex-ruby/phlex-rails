# frozen_string_literal: true

require "forwardable"

module Phlex::Rails
	class Buffered < BasicObject
		def initialize(object, component:)
			@object = object
			@component = component
		end

		def respond_to_missing?(...)
			@object.respond_to?(...)
		end

		def method_missing(*, **, &block)
			if block
				@component.raw(
					@object.public_send(*, **) { |*a| @component.capture(*a, &block) }
				)
			else
				@component.raw(
					@object.public_send(*, **)
				)
			end
		end
	end
end
