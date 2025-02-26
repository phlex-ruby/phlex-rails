# frozen_string_literal: true

class Components::NestedTable::Cell < Phlex::HTML
	include Phlex::Rails::Helpers::ContentTag

	def view_template(&)
		td do
			yield
		end
	end
end
