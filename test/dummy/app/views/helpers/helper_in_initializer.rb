# frozen_string_literal: true

class Helpers::HelperInInitializer < ApplicationView
	include Phlex::Rails::Helpers::Routes

	def initialize
		helpers_helper_in_initializer_path
	end
end
