# frozen_string_literal: true

module Phlex::Rails::SGML
	def self.included(base)
		base.extend ClassMethods
		base.extend Phlex::Rails::HelperMacros
		super
	end

	module ClassMethods
		def render_in(...)
			new.render_in(...)
		end
	end

	def method_missing(name, *args, **kwargs, &block)
		return super unless helpers.respond_to?(name)

		const_name = name.to_s.gsub("?", "")
		module_name = Phlex::Rails::Helpers.constants.find { |mod| mod.to_s.underscore.gsub("domid", "dom_id") == const_name }
		return super unless module_name

		raise NoMethodError.new("Try including `Phlex::Rails::Helpers::#{module_name}` in #{self.class.name}.")
	end

	def partial(*, **, &block)
		if block
			Phlex::Rails::Partial.new(*, **) { capture(&block) }
		else
			Phlex::Rails::Partial.new(*, **)
		end
	end

	def helpers
		unless @_state && (view_context = @_state.view_context)
			unless view_context
				raise Phlex::Rails::HelpersCalledBeforeRenderError.new(
					"Do not use rails helpers until after the view has been rendered."
				)
			end
		end

		if defined?(ViewComponent::Base) && ViewComponent::Base === view_context
			view_context.helpers
		else
			view_context
		end
	end

	def render(renderable, &block)
		case renderable
		when Phlex::SGML, Proc, Method, String
			return super
		when Class
			return super if renderable < Phlex::SGML
		when Enumerable
			return super unless ActiveRecord::Relation === renderable
		when nil
			return super if kwargs.length == 0
		end

		if renderable.respond_to?(:render_in) || renderable.respond_to?(:to_partial_path)
			output = if block
				@_state.view_context.render(renderable) do |*yielded_args|
					if yielded_args.length == 1 && defined?(ViewComponent::Base) && ViewComponent::Base === yielded_args[0]
						capture(Phlex::Rails::Buffered.new(yielded_args[0], view: self), &block)
					else
						capture(*yielded_args, &block)
					end
				end
			else
				@_state.view_context.render(renderable)
			end

			raw(output)
		else
			super
		end
	end

	def render_in(view_context, &erb)
		if erb
			call(view_context:) { |*args|
				if args.length == 1 && Phlex::SGML === args[0] && !erb.source_location&.[](0)&.end_with?(".rb")
					unbuffered = Phlex::Rails::Unbuffered.new(args[0])
					raw(helpers.capture(unbuffered, &erb))
				else
					raw(helpers.capture(*args, &erb))
				end
			}.html_safe
		else
			call(view_context:).html_safe
		end
	end

	def capture(...)
		super&.html_safe
	end
end
