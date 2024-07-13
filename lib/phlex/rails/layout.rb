# frozen_string_literal: true

module Phlex::Rails
	module Layout
		include Helpers::CSPMetaTag
		include Helpers::CSRFMetaTags
		include Helpers::FaviconLinkTag
		include Helpers::PreloadLinkTag
		include Helpers::StylesheetLinkTag
		include Helpers::ActionCableMetaTag
		include Helpers::AutoDiscoveryLinkTag
		include Helpers::JavascriptIncludeTag
		include Helpers::JavascriptImportmapTags
		include Helpers::JavascriptImportModuleTag
		include Helpers::TurboRefreshMethodTag
		include Helpers::TurboRefreshScrollTag
		include Helpers::TurboRefreshesWith

		# @api private
		module Interface
			def render(view_context, _locals, &block)
				new.render(view_context, &block)
			end

			def identifier
				name
			end

			def virtual_path
				return @virtual_path if defined? @virtual_path

				@virtual_path = name&.dup.tap do |n|
					n.gsub!("::", ".")
					n.gsub!(/([a-z])([A-Z])/, '\1_\2')
					n.downcase!
				end
			end
		end

		def self.included(klass)
			unless klass < Phlex::HTML
				raise Phlex::ArgumentError.new("👋 #{name} should only be included into Phlex::HTML classes.")
			end

			klass.extend(Interface)
		end

		def render(view_context = nil, *args, **kwargs, &block)
			if @_context
				super
			else
				call(view_context: view_context) do |yielded|
					case yielded
					when Symbol
						output = view_context.view_flow.get(yielded)
					else
						output = view_context.capture(&block)
					end

					unsafe_raw output
				end
			end
		end

		def identifier
			self.class.identifier
		end

		def virtual_path
			self.class.virtual_path
		end
	end
end
