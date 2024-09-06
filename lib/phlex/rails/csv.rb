# frozen_string_literal: true

module Phlex
	module Rails
		module CSV
			module Overrides
				def each_item(&block)
					return super unless ActiveRecord::Relation === collection
					return super unless collection.arel.orders.empty?

					collection.find_each(&block)
				end
			end
		end
	end
end
