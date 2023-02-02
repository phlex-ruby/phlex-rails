# frozen_string_literal: true

module Phlex::Rails::Helpers
	TAG_HELPERS = %w[
		action_cable_meta_tag
		audio_tag
		csp_meta_tag
		csrf_meta_tags
		favicon_link_tag
		image_tag
		javascript_import_module_tag
		javascript_importmap_tags
		javascript_include_tag
		preload_link_tag
		stylesheet_link_tag
		video_tag
	]

	TAG_HELPERS_WITH_BLOCKS = %w[
		content_for
		link_to
	]

	TAG_HELPERS.each do |method_name|
		class_eval(<<-RUBY, __FILE__, __LINE__ + 1)
			# frozen_string_literal: true

			module #{Phlex::Rails::Loader.inflector.camelize(method_name, nil)}
				def #{method_name}(...)
					unsafe_raw helpers.#{method_name}(...)
				end
			end
		RUBY
	end

	TAG_HELPERS_WITH_BLOCKS.each do |method_name|
		class_eval(<<-RUBY, __FILE__, __LINE__ + 1)
			# frozen_string_literal: true

			module #{Phlex::Rails::Loader.inflector.camelize(method_name, nil)}
				def #{method_name}(*args, **kwargs, &block)
					if block
						unsafe_raw helpers.#{method_name}(*args, **kwargs) { capture(&block) }
					else
						unsafe_raw helpers.#{method_name}(*args, **kwargs)
					end
				end
			end
		RUBY
	end
end
