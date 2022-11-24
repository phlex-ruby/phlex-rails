# frozen_string_literal: true

require "cgi"

module Phlex
	module Rails
		class OutputBuffer < SimpleDelegator
			def safe_append=(value)
				return unless value

				self << case value
					when String then value
					when Symbol then value.name
					else value.to_s
				end
			end

			def append=(value)
				return unless value

				if value.html_safe?
					self.safe_append = value
				else
					self << case value
						when String then CGI.escape_html(value)
						when Symbol then CGI.escape_html(value.name)
						else CGI.escape_html(value.to_s)
					end
				end
			end
		end
	end
end
