# frozen_string_literal: true

class Components::Base < Phlex::HTML
	include Components

	# Include any helpers you want to be available across all components
	include Phlex::Rails::Helpers::Routes
	# The following are used by the phlex_scaffold generator but can be removed if you don't use that
	include Phlex::Rails::Helpers::LinkTo
	include Phlex::Rails::Helpers::DOMID
	include Phlex::Rails::Helpers::FormWith
	include Phlex::Rails::Helpers::ButtonTo
	include Phlex::Rails::Helpers::Pluralize
	include Phlex::Rails::Helpers::Notice

	# Used by the phlex_scaffold generator
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
