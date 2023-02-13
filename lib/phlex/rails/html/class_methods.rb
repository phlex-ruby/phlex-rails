# frozen_string_literal: true

module Phlex
	module Rails
		module HTML
			module ClassMethods
				def render_in(...)
					new.render_in(...)
				end

				def format
					:html
				end
			end
		end
	end
end
