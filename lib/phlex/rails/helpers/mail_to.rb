# frozen_string_literal: true

module Phlex::Rails::Helpers::MailTo
	extend Phlex::Rails::HelperMacros

	register_output_helper def mail_to(...) = nil
end
