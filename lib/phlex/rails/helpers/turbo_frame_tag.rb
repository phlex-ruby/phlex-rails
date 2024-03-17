# frozen_string_literal: true

module Phlex::Rails::Helpers::TurboFrameTag
	extend Phlex::Rails::HelperMacros

	# @!method turbo_frame_tag(...)
	define_output_helper_with_capture_block :turbo_frame_tag
end
