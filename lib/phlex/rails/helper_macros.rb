# frozen_string_literal: true

# @api private
module Phlex::Rails::HelperMacros
	def define_output_helper(method_name)
		class_eval(<<-RUBY, __FILE__, __LINE__ + 1)
			# frozen_string_literal: true

			def #{method_name}(...)
  			context = @_context
  			return if context.fragment && !context.in_target_fragment

				output = helpers.#{method_name}(...)

				case output
				when ActiveSupport::SafeBuffer
					@_context.target << output
				end

				nil
			end
		RUBY
	end

	def define_output_helper_with_capture_block(method_name)
		class_eval(<<-RUBY, __FILE__, __LINE__ + 1)
			# frozen_string_literal: true

			def #{method_name}(*args, **kwargs, &block)
  			context = @_context
  			return if context.fragment && !context.in_target_fragment

				output = if block
					helpers.#{method_name}(*args, **kwargs) { capture(&block) }
				else
					helpers.#{method_name}(*args, **kwargs)
				end

				case output
				when ActiveSupport::SafeBuffer
					@_context.target << output
				end

				nil
			end
		RUBY
	end

	def define_value_helper(method_name)
		class_eval(<<-RUBY, __FILE__, __LINE__ + 1)
			# frozen_string_literal: true

			def #{method_name}(...)
				helpers.#{method_name}(...)
			end
		RUBY
	end

	def define_value_helper_with_capture_block(method_name)
		class_eval(<<-RUBY, __FILE__, __LINE__ + 1)
			# frozen_string_literal: true

			def #{method_name}(*args, **kwargs, &block)
				if block
					helpers.#{method_name}(*args, **kwargs) { capture(&block) }
				else
					helpers.#{method_name}(*args, **kwargs)
				end
			end
		RUBY
	end

	def define_builder_yielding_helper(method_name, builder)
		class_eval(<<-RUBY, __FILE__, __LINE__ + 1)
			# frozen_string_literal: true

			def #{method_name}(*args, **kwargs)
  			context = @_context
  			return if context.fragment && !context.in_target_fragment
				output = if block_given?
					helpers.#{method_name}(*args, **kwargs) { |form|
						capture do
							yield(
								#{builder.name}.new(form,
									view: self
								)
							)
						end
					}
				else
					helpers.#{method_name}(*args, **kwargs)
				end

				case output
				when ActiveSupport::SafeBuffer
					@_context.target << output
				end

				nil
			end
		RUBY
	end
end
