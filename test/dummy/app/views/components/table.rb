class Table < ApplicationComponent
	def view_template
		table do
			yield self
		end
	end

	def header
		thead do
			tr do
				yield self
			end
		end
	end

	def column_header(&)
		th(&)
	end

	def body
		tbody do
			yield self
		end
	end

	def row
		tr do
			yield self
		end
	end

	def cell(&)
		td(&)
	end
end
