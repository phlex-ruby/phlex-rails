# frozen_string_literal: true

# @api private
class Phlex::Rails::Unbuffered
	def initialize(component)
		@component = component
	end

	def respond_to_missing?(...)
		@component.respond_to?(...)
	end

	def method_missing(method_name, *, &erb)
		if @component.respond_to?(method_name)
			output = @component.capture do
				if erb
					@component.public_send(method_name, *) do
						@component.raw(
							@component.helpers.capture(
								&erb
							),
						)
					end
				else # no erb block
					@component.public_send(
						method_name,
						*,
					)
				end
			end
		else
			super
		end
	end

	def inspect
		"Unbuffered(#{@component.inspect})"
	end

	def call(...)
		@component.call(...)
	end

	def send(...)
		@component.__send__(...)
	end

	def public_send(...)
		@component.public_send(...)
	end
end
