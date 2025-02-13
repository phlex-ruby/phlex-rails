# frozen_string_literal: true

module Phlex::Rails::Helpers::SimpleFormat
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/TextHelper.html#method-i-simple_format)
	register_output_helper def simple_format(...) = nil
end
