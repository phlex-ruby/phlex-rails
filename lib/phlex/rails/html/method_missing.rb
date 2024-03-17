# frozen_string_literal: true

module Phlex::Rails::HTML::MethodMissing
	def method_missing(name, *args, **kwargs, &block)
		return super unless helpers.respond_to?(name)

		const_name = name.to_s.gsub("?", "")
		module_name = Phlex::Rails::Helpers.constants.find { |mod| mod.to_s.underscore.gsub("domid", "dom_id") == const_name }
		return super unless module_name

		raise NoMethodError, "Try including `Phlex::Rails::Helpers::#{module_name}` in your class."
	end
end
