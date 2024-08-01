# frozen_string_literal: true

Rails.application.routes.draw do
	# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

	# Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
	# Can be used by load balancers and uptime monitors to verify that the app is live.
	get "up" => "rails/health#show", :as => :rails_health_check

	# Defines the root path route ("/")
	root "posts#index"

	get "/layout/with_erb_view", to: "layout#with_erb_view"
	get "/layout/with_phlex_view", to: "layout#with_phlex_view"

	get "/helpers/form_with", to: "helpers#form_with"
	get "/helpers/tag", to: "helpers#tag"
	get "/helpers/missing_helper", to: "helpers#missing_helper"
	get "/helpers/notice", to: "helpers#notice_test"

	get "/rendering/partial_from_phlex", to: "rendering#partial_from_phlex"
	get "/rendering/view_component_from_phlex", to: "rendering#view_component_from_phlex"
end
