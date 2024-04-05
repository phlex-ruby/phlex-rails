# frozen_string_literal: true

module Rendering
	class VcComponent < ViewComponent::Base
		renders_one :slot

		def call
			if slot?
				slot
			end
		end
	end
end
