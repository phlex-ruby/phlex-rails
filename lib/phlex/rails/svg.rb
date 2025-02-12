# frozen_string_literal: true

module Phlex::Rails::SVG
	def self.included(base)
		base.include Phlex::Rails::SGML
		super
	end

	def format
		:svg
	end
end
