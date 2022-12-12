# frozen_string_literal: true

module Views
	class Blog < ApplicationView
		def initialize
			@posts = []
		end

		def template(&block)
			capture(&block)

			h3(class: "font-bold") { @header }

			@posts.each do |post|
				article(class: "drop-shadow p-5 rounded") { post }
			end
		end

		def with_header(&block)
			@header = capture(&block)
		end

		def with_post(&block)
			@posts << capture(&block)
		end
	end
end
