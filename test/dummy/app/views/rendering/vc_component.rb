# frozen_string_literal: true

module Views::Rendering
	class VcComponent < ViewComponent::Base
		renders_one :slot
	end
end
