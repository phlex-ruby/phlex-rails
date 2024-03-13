# frozen_string_literal: true

module Phlex
	module Rails
		module CSV
			module Overrides
				def each_item(&block)
					case collection
					when ActiveRecord::Relation
						collection.find_each(&block)
					else
						super
					end
				end
			end
		end
	end
end
