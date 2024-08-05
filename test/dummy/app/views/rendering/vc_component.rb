# frozen_string_literal: true

module Rendering
	class VcComponent < ViewComponent::Base
		renders_one :slot
	end
end
