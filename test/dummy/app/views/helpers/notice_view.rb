# frozen_string_literal: true

class Views::Helpers::NoticeView < Views::Base
	include Phlex::Rails::Helpers::Notice

	def view_template
		# Comes from https://api.rubyonrails.org/v7.1.3.4/classes/ActionDispatch/Flash/FlashHash.html#method-i-notice
		p { notice }
	end
end
