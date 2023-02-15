# frozen_string_literal: true

# require "spec_helper"

# class A < Phlex::HTML
# 	def template
# 		yield
# 	end

# 	def foo
# 		h1 { "Hello" }
# 	end
# end

# class B < Phlex::HTML
# 	def template
# 		render A.new(&:foo)
# 	end
# end

# RSpec.describe Phlex::HTML do
# 	include ViewHelper

# 	let(:output) { render B.new }

# 	it "works with a c-level proc" do
# 		expect(output).to have_css "h1", text: "Hello"
# 	end
# end
