# frozen_string_literal: true

module Phlex::Rails::Helpers::ActionName
	extend Phlex::Rails::HelperMacros

	# @!method action_name
	# 	@return [String] the name of the controller action, e.g. <code>"index"</code>
	# 	@see https://api.rubyonrails.org/classes/AbstractController/Base.html#method-i-action_name
	register_value_helper :action_name
end
