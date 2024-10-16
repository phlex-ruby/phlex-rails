# frozen_string_literal: true

# Based on: railties-7.1.3.4/lib/rails/generators/erb/scaffold/scaffold_generator.rb
# and railties-7.1.3.4/lib/rails/generators/erb/scaffold/templates
class Rails::PhlexScaffoldGenerator < Rails::Generators::NamedBase
	include Rails::Generators::ResourceHelpers

	argument :attributes, type: :array, default: [], banner: "field:type field:type"

	def create_root_folder
		empty_directory view_folder
	end

	def create_model_view
		create_file File.join(view_folder, "#{singular_name}.rb"), <<~RUBY
   module Views::#{module_name}
     class #{class_name} < Views::Base
       def initialize(#{singular_name}:)
         @#{singular_name} = #{singular_name}
       end
   
       def view_template
         div(id: (dom_id #{singular_name})) do
   #{display_attributes}
         end
       end
   
       private
   
       attr_reader :#{singular_name.to_sym}
     end
   end
		RUBY
	end

	def create_index_view
		create_file File.join(view_folder, "index.rb"), <<~RUBY
   module Views::#{module_name}
     class Index < Views::Base
       def initialize(#{plural_name}:)
         @#{plural_name} = #{plural_name}
       end
   
       def view_template
         p(style: "color:#008000") { notice }
   
         h1 { "#{plural_name.humanize}" }
   
         div(id: "#{plural_name}") do
           #{plural_name}.each do |#{singular_name}|
             render #{class_name}.new(#{singular_name}: #{singular_name})
             p do
               link_to "Show this #{singular_name.humanize}", #{singular_name}
             end
           end
         end
   
         link_to "New #{human_name.downcase}", new_#{singular_name}_path
       end
   
       private
   
       attr_reader :#{plural_name}
     end
   end
		RUBY
	end

	def create_new_view
		create_file File.join(view_folder, "new.rb"), <<~RUBY
   module Views::#{module_name}
     class New < Views::Base
       def initialize(#{singular_name}:)
         @#{singular_name} = #{singular_name}
       end
   
       def view_template
         h1 { "New #{singular_name.humanize.downcase}" }
   
         render Form.new(#{singular_name}: #{singular_name})
   
         br
   
         div do
           link_to "Back to #{plural_name}", #{plural_name}_path
         end
       end
   
       private
   
       attr_reader :#{singular_name}
     end
   end
		RUBY
	end

	def create_edit_view
		create_file File.join(view_folder, "edit.rb"), <<~RUBY
   module Views::#{module_name}
     class Edit < Views::Base
       def initialize(#{singular_name}:)
         @#{singular_name} = #{singular_name}
       end
   
       def view_template
         h1 { "Editing #{singular_name.humanize.downcase}" }
   
         render Form.new(#{singular_name}: #{singular_name})
   
         br
   
         div do
           link_to "Show this #{singular_name}", #{singular_name}
           plain " | "
           link_to "Back to #{plural_name}", #{plural_name}_path
         end
       end
   
       private
   
       attr_reader :#{singular_name}
     end
   end
		RUBY
	end

	def create_form_view
		create_file File.join(view_folder, "form.rb"), <<~RUBY
   module Views::#{module_name}
     class Form < Views::Base
       def initialize(#{singular_name}:)
         @#{singular_name} = #{singular_name}
       end
   
       def view_template
         form_with(model: #{singular_name}) do |form|
           if #{singular_name}.errors.any?
             div(style: "color:red") do
               h2 do
                 plain pluralize(#{singular_name}.errors.count, "error")
                 plain " prohibited this #{singular_name} from being saved:"
               end
               ul { #{singular_name}.errors.each { |error| li { error.full_message } } }
             end
           end
   
   #{form_field_attributes}
   
           div { plain form.submit }
         end
       end
   
       private
   
       attr_reader :#{singular_name.to_sym}
     end
   end
		RUBY
	end

	def create_show_view
		create_file File.join(view_folder, "show.rb"), <<~RUBY
   module Views::#{module_name}
     class Show < Views::Base
       def initialize(#{singular_name}:)
         @#{singular_name} = #{singular_name}
       end
   
       def view_template
         p(style: "color:#008000") { notice }
   
         render #{class_name}.new(#{singular_name}: #{singular_name})
   
         div do
           link_to "Edit this #{human_name.downcase}", edit_#{singular_name}_path(#{singular_name})
           plain " | "
           link_to "Back to #{plural_name}", #{plural_name}_path
           button_to "Destroy this #{human_name.downcase}", #{singular_name}, method: :delete
         end
       end
   
       private
   
       attr_reader :#{singular_name}
     end
   end
		RUBY
	end

		private

	def view_folder
		File.join("app/views", controller_file_path)
	end

	def display_attributes
		attributes.reject(&:password_digest?).map do |attribute|
			model_field = singular_col_name(attribute)
			display_field_name = display_attribute(attribute)
			if attribute.attachment?
				<<DISPLAY_ATTRIBUTES
        p do
          #{display_field_name}
          link_to #{model_field}.filename, #{model_field} if #{model_field}.attached?
        end
DISPLAY_ATTRIBUTES
			elsif attribute.attachments?
				<<DISPLAY_ATTRIBUTES
        p do
          #{display_field_name}
          #{model_field}.each do |#{attribute.singular_name}|
            div do
              link_to #{attribute.singular_name}.filename, #{attribute.singular_name}
            end
          end
        end
DISPLAY_ATTRIBUTES
			else
				<<DISPLAY_ATTRIBUTES
        p do
          #{display_field_name}
          plain #{model_field}
        end
DISPLAY_ATTRIBUTES
			end
		end.join("\n").rstrip
	end

	def display_attribute(attribute)
		%Q[strong { "#{attribute.human_name}: " }]
	end

	def singular_col_name(attribute)
		"#{singular_name}.#{attribute.column_name}"
	end

	def module_name
		class_name.pluralize
	end

	def form_field_attributes
		attributes.map do |attribute|
			if attribute.password_digest?
				<<FORM_FIELD_ATTRIBUTES
      div do
        form.label :password, style: "display: block"
        form.password_field :password
      end
      div do
        form.label :password_confirmation, style: "display: block"
        form.password_field :password_confirmation
      end
FORM_FIELD_ATTRIBUTES
			elsif attribute.attachments?
				<<FORM_FIELD_ATTRIBUTES
      div do
        form.label :#{attribute.column_name}, style: "display: block"
        form.#{attribute.field_type} :#{attribute.column_name}, multiple: true
      end
FORM_FIELD_ATTRIBUTES
			else
				<<FORM_FIELD_ATTRIBUTES
      div do
        form.label :#{attribute.column_name}, style: "display: block"
        form.#{attribute.field_type} :#{attribute.column_name}
      end
FORM_FIELD_ATTRIBUTES
			end
		end.join("\n").rstrip
	end
end
