# frozen_string_literal: true

require "spec_helper"

RSpec.describe ExamplesController, type: :controller do
	render_views

	it "supports builder-style components" do
		get :card

		expect(response.body).to eq %(<article>\n  <h1 class="card-title">Hello</h1>\n  <span>Body</span>\n</article>)
	end

	it "supports slot-style components" do
		get :tabs

		expect(response.body).to eq %(<div class="tabs"><ul class="names"><li>A</li><li>B</li></ul><ul class="content"><li>    <h1>Content for A</h1>\n</li><li>    <h1>Content for B</h1>\n</li></ul></div>)
	end

	it "supports view component" do
		get :view_component

		expect(response.body).to eq %(<span>Before card</span>\n\n<article>\n  <span>Before title</span>\n  <h1 class="card-title">Hello</h1>\n  <span>After title</span>\n</article>\n<span>After card</span>\n\n)
	end
end
