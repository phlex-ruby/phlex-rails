# frozen_string_literal: true

# @api private
class Phlex::Rails::Unbuffered < BasicObject
	def initialize(object)
		@object = object
	end

	def inspect
		"Unbuffered(#{@object.class.name})[object: #{@object.inspect}]"
	end

	# Borrow some important methods from Object
	define_method :__class__,
		::Object.instance_method(:class)

	define_method :__public_send__,
		::Object.instance_method(:public_send)

	def respond_to_missing?(...)
		@object.respond_to?(...)
	end

	def method_missing(name, *args, **kwargs, &block)
		if @object.respond_to?(name)

			__class__.define_method(name) do |*a, **k, &b|
				@object.capture do
					if b
						@object.public_send(name, *a, **k) do |*aa|
							if aa.length == 1 && Phlex::SGML === aa[0]
								@object.helpers.capture(
									Phlex::Rails::Unbuffered.new(aa[0]),
									&b
								)
							else
								@object.helpers.capture(*aa, &b)
							end
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
