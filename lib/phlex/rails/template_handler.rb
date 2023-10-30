module Phlex::Rails
	class TemplateHandler
		def self.call(source)
			klass = Class.new(Phlex::HTML) do
				class_eval <<~RUBY, __FILE__, __LINE__ + 1
					def template
						#{source}
					end
				RUBY
			end

			klass.call
		end
	end
end
