# frozen_string_literal: true

module Phlex::Rails::Helpers::MailTo
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/UrlHelper.html#method-i-mail_to)
	register_output_helper def mail_to(...) = nil
end
