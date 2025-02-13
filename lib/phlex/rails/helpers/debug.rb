# frozen_string_literal: true

module Phlex::Rails::Helpers::Debug
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/DebugHelper.html#method-i-debug)
	register_output_helper def debug(...) = nil
end
