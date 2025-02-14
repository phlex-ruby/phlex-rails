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
		return super unless view_context.respond_to?(name)

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
		warn <<~MESSAGE
			The `helpers` method is deprecated and will be removed in the next
			minor version of phlex-rails.

			If you absolutely need to access the underlying Rails view context,
			you can do that via the `view_context` method, though this is
			not recommended.

			It is much safer to use one of the built-in helper adapters or to
			register your own adapter via `register_output_helper` or
			`register_value_helper`.

			See https://beta.phlex.fun/rails/helpers.html
		MESSAGE
	end

	def view_context
		context[:rails_view_context] || (
			raise Phlex::Rails::HelpersCalledBeforeRenderError.new(
				"Do not use rails helpers until after the view has been rendered."
			)
		)
	end

	# If we’re rendered from view_component, we need to capture on the view_component context.
	def capture_context
		context[:view_component_context] || view_context
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
				view_context.render(renderable) do |*yielded_args|
					if yielded_args.length == 1 && defined?(ViewComponent::Base) && ViewComponent::Base === yielded_args[0]
						capture(Phlex::Rails::Buffered.new(yielded_args[0], component: self), &block)
					else
						capture(*yielded_args, &block)
					end
				end
			else
				view_context.render(renderable)
			end

			raw(output)
		else
			super
		end
	end

	def render_in(view_context, &erb)
		case view_context
		when defined?(ViewComponent::Base) && ViewComponent::Base
			context = {
				rails_view_context: view_context.helpers,
				view_component_context: view_context,
			}
		else
			context = { rails_view_context: view_context }
		end

		if erb
			call(context:) { |*args|
				if args.length == 1 && Phlex::SGML === args[0] && !erb.source_location&.[](0)&.end_with?(".rb")
					unbuffered = Phlex::Rails::Unbuffered.new(args[0])
					raw(view_context.capture(unbuffered, &erb))
				else
					raw(view_context.capture(*args, &erb))
				end
			}.html_safe
		else
			call(context:).html_safe
		end
	end

	def set_original_view_context(view_context)
		# no-op (see https://github.com/ViewComponent/view_component/issues/2207)
	end

	def capture(...)
		super&.html_safe
	end

	def enable_cache_reloading?
		Rails.env.development?
	end
end
