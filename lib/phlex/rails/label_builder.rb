# frozen_string_literal: true

class Phlex::Rails::LabelBuilder < Phlex::Rails::Decorator
	def object(...) = @object.object(...)
	def translation(...) = @object.translation(...)
end
