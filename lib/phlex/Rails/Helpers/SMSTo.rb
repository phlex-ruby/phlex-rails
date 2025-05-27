# frozen_string_literal: true

module Phlex::Rails::Helpers::SMSTo
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/UrlHelper.html#method-i-sms_to)
	register_output_helper def sms_to(...) = nil
end
