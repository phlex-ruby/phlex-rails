# frozen_string_literal: true

module Phlex::Rails::Helpers::CSPMetaTag
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/CspHelper.html#method-i-csp_meta_tag)
	register_output_helper def csp_meta_tag(...) = nil
end
