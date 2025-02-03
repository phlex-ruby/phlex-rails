# frozen_string_literal: true

module Phlex::Rails::Helpers::Truncate
	extend Phlex::Rails::HelperMacros

	register_value_helper def truncate(
		value,
		length: nil,
		omission: nil,
		separator: nil,
		escape: nil
	) = nil
end
