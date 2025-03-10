# frozen_string_literal: true

module Phlex::Rails::HTML
	def self.included(base)
		base.include Phlex::Rails::SGML
		super
	end

	def format
		:html
	end
end
