# frozen_string_literal: true

module Phlex::Rails::HelperMacros
	# Register a Rails helper that returns safe HTML to be pushed to the output buffer.
	def register_output_helper(method_name)
		class_eval(<<-RUBY, __FILE__, __LINE__ + 1)
			# frozen_string_literal: true

			def #{method_name}(*args, **kwargs, &block)
				output = if block
					view_context.#{method_name}(*args, **kwargs) { |*args| capture(*args, &block) }
				else
					view_context.#{method_name}(*args, **kwargs)
				end

				raw(output)
			end
		RUBY
	end

	# Register a Rails helper that returns a value that shouldn’t be pushed to the output buffer.
	def register_value_helper(method_name)
		class_eval(<<-RUBY, __FILE__, __LINE__ + 1)
			# frozen_string_literal: true

			def #{method_name}(*args, **kwargs, &block)
				if block
					view_context.#{method_name}(*args, **kwargs) { |*args| capture(*args, &block) }
				else
					view_context.#{method_name}(*args, **kwargs)
				end
			end
		RUBY
	end

	def register_builder_yielding_helper(method_name)
		class_eval(<<-RUBY, __FILE__, __LINE__ + 1)
			# frozen_string_literal: true

			def #{method_name}(*args, **kwargs)
				output = if block_given?
					view_context.#{method_name}(*args, **kwargs) { |builder|
					yield Phlex::Rails::Builder.new(builder, component: self)
					}
				else
					view_context.#{method_name}(*args, **kwargs)
				end

				raw(output)
			end
		RUBY
	end
end
