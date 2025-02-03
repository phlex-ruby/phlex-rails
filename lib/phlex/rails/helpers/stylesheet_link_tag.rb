# frozen_string_literal: true

module Phlex::Rails::Helpers::StylesheetLinkTag
	extend Phlex::Rails::HelperMacros

	register_output_helper def stylesheet_link_tag(...) = nil
end
