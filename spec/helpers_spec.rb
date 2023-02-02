# frozen_string_literal: true

require "spec_helper"

RSpec.describe HelpersController, type: :controller do
	render_views

	it "supports form_with" do
		get :form_with

		expect(response.body).to eq %(<form action="/form_with" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" autocomplete="off" /><input type="text" name="name" /></form>)
	end
end
