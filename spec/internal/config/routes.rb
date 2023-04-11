# frozen_string_literal: true

Rails.application.routes.draw do
	get "form_with", to: "helpers#form_with"
	get "view_component", to: "examples#view_component"
	get "templateless_view_component", to: "examples#templateless_view_component"
	get "tabs", to: "examples#tabs"
	get "card", to: "examples#card"

	get "articles/index", to: "articles#index"
	get "articles/show", to: "articles#show"
end
