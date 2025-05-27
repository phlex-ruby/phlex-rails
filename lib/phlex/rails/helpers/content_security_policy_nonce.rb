# frozen_string_literal: true

module Phlex::Rails::Helpers::ContentSecurityPolicyNonce
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionDispatch/ContentSecurityPolicy/Request.html#method-i-content_security_policy_nonce)
	register_value_helper def content_security_policy_nonce(...) = nil
end
