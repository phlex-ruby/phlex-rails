# frozen_string_literal: true

module Phlex::Rails::Helpers::CSRFMetaTags
	extend Phlex::Rails::HelperMacros

	register_output_helper def csrf_meta_tags(...) = nil
end
