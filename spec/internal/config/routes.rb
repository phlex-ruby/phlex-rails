# frozen_string_literal: true

Rails.application.routes.draw do
	get "form_with", to: "examples#form_with"
	get "view_component", to: "examples#view_component"
	get "tabs", to: "examples#tabs"
	get "card", to: "examples#card"
end
