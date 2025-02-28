# frozen_string_literal: true

test "form_with" do
	component = Class.new(Phlex::HTML) do
		include Phlex::Rails::Helpers::FormWith

		define_method :view_template do
			form_with(url: "/") do |form|
				form.text_field :bar
				form.button "Submit"

				form.label :foo do |label|
					strong { label.translation }
				end

				form.fields_for :a do |fields|
					fields.text_field :b
				end

				form.fields :c do |fields|
					fields.text_field :d
				end
			end
		end
	end

	controller.define_singleton_method(:form_authenticity_token) { |_| "(example form authenticity token)" }

	output = render(component)

	assert_equivalent_html output, <<~HTML
		<form action="/" accept-charset="UTF-8" method="post">
			<input name="utf8" type="hidden" value="✓" autocomplete="off">
			<input type="hidden" name="authenticity_token" value="(example form authenticity token)" autocomplete="off">
			<input type="text" name="bar">
			<button name="button" type="submit">Submit</button>
			<label>
				<strong>Foo</strong>
			</label>
			<input type="text" name="[a][b]" id="_a_b">
			<input type="text" name="[c][d]">
		</form>
	HTML
end
