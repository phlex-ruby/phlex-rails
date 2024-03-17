# frozen_string_literal: true

module Phlex::Rails::Helpers::MailTo
	extend Phlex::Rails::HelperMacros

	# @!method mail_to(...)
	# 	@return [nil]
	define_output_helper_with_capture_block :mail_to
end
