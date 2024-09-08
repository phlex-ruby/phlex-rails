# frozen_string_literal: true

# @api private
class Phlex::Rails::Unbuffered
	def initialize(object)
		@object = object
	end

	def respond_to_missing?(...)
		@object.respond_to?(...)
	end

	def method_missing(method_name, *, &erb)
		if @object.respond_to?(method_name)

			# ERB expects a string, so we capture before calling the original method
			@object.capture do
				if erb
					# If we passed an erb block, we need to prevent ERB from pushing it to its output buffer
					@object.public_send(method_name, *) do
						raw(
							# Ask ActionView to not output the erb but instead give it to us as a string
							@object.helpers.capture(&erb),
						)
					end
				else
					@object.public_send(method_name, *)
				end
			end
		else
			super
		end
	end

	# Forward some methods to the original underlying object
	def call(...)
		@object.call(...)
	end

	def send(...)
		@object.__send__(...)
	end

	def public_send(...)
		@object.public_send(...)
	end
end
