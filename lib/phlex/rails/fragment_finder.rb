# frozen_string_literal: true

module Phlex::Rails::FragmentFinder
	extend self

	Parser = if defined?(Nokolexbor)
		Nokolexbor
	else
		require "nokogiri"
		Nokogiri::HTML
	end

	def extract(html, ids)
		parsed = Parser.parse(html)
		selector = ids.map { |id| "##{id}" }.join(", ")

		result = +""

		ids.count.times do
			if (fragment = parsed.at_css(selector))
				result << fragment.to_s
				fragment.remove
			end
		end

		result
	end
end
