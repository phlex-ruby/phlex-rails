# frozen_string_literal: true

class ApplicationComponent < Phlex::HTML
	include Phlex::Rails::Helpers::Routes

	if Rails.env.development?
		def before_template
			comment { "Before #{self.class.name}" }
			super
		end
	end
end
