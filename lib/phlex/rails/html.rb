# frozen_string_literal: true

module Phlex::Rails::HTML
	autoload :MethodMissing, "phlex/rails/html/method_missing"

	module Format
		def format
			:html
		end
	end
end
