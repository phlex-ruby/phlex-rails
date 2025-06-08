# frozen_string_literal: true

test "buffered type" do
	type = Phlex::Rails::Buffered(ActionView::Helpers::TagHelper::TagBuilder)
	tag = ActionController::Base.new.view_context.tag
	assert type === Phlex::Rails::Buffered.new(tag, component: nil)
	refute type === Phlex::Rails::Buffered.new(nil, component: nil)
	refute type === "not buffered"
end

test "builder type" do
	type = Phlex::Rails::Builder(ActionView::Helpers::FormBuilder)
	ActionController::Base.new.view_context.form_with(url: "/", method: :get) do |form|
		assert type === Phlex::Rails::Builder.new(form, component: nil)
	end
	refute type === Phlex::Rails::Builder.new(nil, component: nil)
	refute type === "not adapted builder"
end
