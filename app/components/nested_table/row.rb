# frozen_string_literal: true

class Components::NestedTable::Row < Phlex::HTML
	def initialize
		@cells = []
	end

	def with_cell(&)
		@cells << Components::NestedTable::Cell.new(&)
	end

	def before_template(&)
		capture(&)
		super
	end

	def view_template(&)
		tr do
			render @cells
		end
	end
end
