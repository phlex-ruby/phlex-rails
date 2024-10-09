# frozen_string_literal: true

class ApplicationComponent < Phlex::HTML
	include Phlex::Rails::Helpers::Routes
	include Phlex::Rails::Helpers::LinkTo
	include Phlex::Rails::Helpers::DOMID
	include Phlex::Rails::Helpers::FormWith
	include Phlex::Rails::Helpers::ButtonTo
	include Phlex::Rails::Helpers::Pluralize
	include Phlex::Rails::Helpers::LinkTo

	register_value_helper :notice

	private def format_object(object)
		# Name the Classes explicitly otherwise you get unexpected results
		# e.g. an empty Array will return '[]' which looks bad on the index page
		super || case object
							when TrueClass,
								FalseClass,
								BigDecimal,
								ActiveSupport::TimeWithZone,
								Date

								object.to_s
		end
	end

	if Rails.env.development?
		def before_template
			comment { "Before #{self.class.name}" }
			super
		end
	end
end
