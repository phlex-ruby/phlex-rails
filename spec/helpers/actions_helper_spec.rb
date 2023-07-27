# frozen_string_literal: true

require "spec_helper"

RSpec.describe Phlex::Rails::Actions, type: :controller do
	class PostsController < ActionController::Base
		include Phlex::Rails::Actions

		before_action :load_post

		class Show < Phlex::HTML
			attr_accessor :post

			def template
				div { @post }
			end
		end

		def edit
			render plain: "Hello, Rails"
		end

		class Bye < Phlex::HTML
			def template
				plain "Bye, Phlex"
			end
		end

		def bye
			render plain: "Bye, Controller Method"
		end

		private

		def load_post
			@post = "Hello, Phlex"
		end
	end

	before(:each) do
		@controller = PostsController.new
		@routes = ActionDispatch::Routing::RouteSet.new
		@routes.draw do
			get "show", to: "posts#show"
			get "edit", to: "posts#edit"
			get "bye", to: "posts#bye"
		end
	end

	describe "render Phlex view class" do
		it "renders the Phlex view for the given action" do
			get :show
			expect(response.body).to include("Hello, Phlex")
		end
	end

	describe "render controller method" do
		it "renders the controller method for the given action" do
			get :edit
			expect(response.body).to include("Hello, Rails")
		end
	end

	describe "render controller method over Phlex class" do
		it "renders the controller method for the given action" do
			get :bye
			expect(response.body).to include("Bye, Controller Method")
		end
	end
end
