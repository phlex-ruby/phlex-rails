# frozen_string_literal: true

class Components::Table < Phlex::HTML
	def initialize(rows)
		@rows = rows
		@columns = []
	end

	def view_template(&)
		vanish(&)

		table do
			thead do
				@columns.each do |column|
					th { column[:header] }
				end
			end

			tbody do
				@rows.each do |row|
					tr do
						@columns.each do |column|
							td { column[:content].call(row) }
						end
					end
				end
			end
		end
	end

	def column(header, &content)
		@columns << { header:, content: }
	end
end
