# frozen_string_literal: true

module Phlex::Rails::Helpers::NumberToHumanSize
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/NumberHelper.html#method-i-number_to_human_size)
	register_value_helper def number_to_human_size(...) = nil
end
