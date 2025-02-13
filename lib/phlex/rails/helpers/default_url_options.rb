# frozen_string_literal: true

module Phlex::Rails::Helpers::DefaultURLOptions
	extend Phlex::Rails::HelperMacros

	# [Rails Docs](https://api.rubyonrails.org/classes/ActionDispatch/Routing/Mapper/Base.html#method-i-default_url_options)
	register_value_helper def default_url_options(...) = nil
end
