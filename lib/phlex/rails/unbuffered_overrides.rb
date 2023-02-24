# frozen_string_literal: true

module Phlex::Rails::UnbufferedOverrides
	def method_missing(name, *args, **kwargs, &block)
		if @object.respond_to?(name)

			__class__.define_method(name) do |*a, **k, &b|
				@object.capture do
					if b
						@object.public_send(name, *a, **k) do |*aa|
							@object.helpers.capture(*aa, &b)
						end
					else
						@object.public_send(name, *a, **k)
					end
				end
			end

			# Now we've defined this missing method, we can call it.
			__public_send__(name, *args, **kwargs, &block)
		else
			super
		end
	end
end
