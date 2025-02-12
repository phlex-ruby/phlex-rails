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

		module Interface
			def render(view_context, _locals, &)
				new.render(view_context, &)
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

		def self.included(base)
			unless base < Phlex::HTML
				raise Phlex::ArgumentError.new("👋 #{name} should only be included into Phlex::HTML classes.")
			end

			base.extend(Interface)
			super
		end

		def render(view_context = nil, *args, **kwargs, &block)
			if @_state
				super
			else
				call(context: { rails_view_context: view_context }) do |yielded|
					case yielded
					when Symbol
						output = view_context.view_flow.get(yielded)
					else
						output = view_context.capture(&block)
					end

					raw output
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
