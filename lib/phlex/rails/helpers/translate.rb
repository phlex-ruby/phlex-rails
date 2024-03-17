# frozen_string_literal: true

module Phlex::Rails::Helpers::Translate
	module ClassMethods
		def translation_path
			@translation_path ||= name&.dup.tap do |n|
				n.gsub!("::", ".")
				n.gsub!(/([a-z])([A-Z])/, '\1_\2')
				n.downcase!
			end
		end
	end

	def self.included(base)
		base.extend(ClassMethods)
	end

	def translate(key, **options)
		key = "#{self.class.translation_path}#{key}" if key.start_with?(".")

		helpers.t(key, **options)
	end

	alias_method :t, :translate
end
