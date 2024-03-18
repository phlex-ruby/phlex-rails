# frozen_string_literal: true

module Phlex::Rails::Helpers::MailTo
	extend Phlex::Rails::HelperMacros

	# @!method mail_to(...)
	# 	@return [nil]
	register_output_helper :mail_to
end
