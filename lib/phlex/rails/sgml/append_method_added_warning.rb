# frozen_string_literal: true

module Phlex
	module Rails
		module SGML
			module AppendMethodAddedWarning
				def method_added(name)
					if name == :append || name == :safe_append= || name == :safe_concat
						raise Phlex::NameError, "You shouldn't redefine the #{name} method as it's required for safe HTML output."
					end

					super
				end
			end
		end
	end
end
