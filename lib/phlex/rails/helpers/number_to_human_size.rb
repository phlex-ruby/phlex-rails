# frozen_string_literal: true

module Phlex::Rails::Helpers::NumberToHumanSize
	extend Phlex::Rails::HelperMacros

	# @!method number_to_human_size(...)
	register_value_helper :number_to_human_size
end
