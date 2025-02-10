# frozen_string_literal: true

# @api private
class Phlex::Rails::Unbuffered
	def initialize(component)
		@component = component
	end

	def inspect
		"Unbuffered(#{@component.inspect})"
	end

	def public_send(...)
		@component.public_send(...)
	end

	def respond_to_missing?(...)
		@component.respond_to?(...)
	end

	def method_missing(method_name, *, **, &erb)
		component = @component

		if component.respond_to?(method_name)
			output = component.capture do
				if erb
					component.public_send(method_name, *, **) do |*a, **kw|
						component.raw(
							component.helpers.capture(
								*a,
								**kw,
								&erb
							),
						)
					end
				else # no erb block
					component.public_send(method_name, *, **)
				end
			end
		else
			super
		end
	end
end
