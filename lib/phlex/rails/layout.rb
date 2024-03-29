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

		# @api private
		module Interface
			def render(view, _locals, &block)
				component = new

				component.call(view_context: view) do |yielded|
					case yielded
					when Symbol
						output = view.view_flow.get(yielded)
					else
						output = yield
					end

					case output
					when ActiveSupport::SafeBuffer
						component.unsafe_raw output
					end

					nil
				end
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
				raise Phlex::ArgumentError,
					"👋 #{name} should only be included into Phlex::HTML classes."
			end

			klass.extend(Interface)
		end
	end
end
