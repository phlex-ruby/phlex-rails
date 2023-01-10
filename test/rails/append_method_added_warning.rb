# frozen_string_literal: true

describe Phlex::Rails::AppendMethodAddedWarning do
	it "raises a warning when overriding the append method" do
		expect {
			Class.new(Phlex::HTML) do
				def append
				end
			end
		}.to raise_exception Phlex::NameError
	end

	it "raises a warning when overriding the safe_append method" do
		expect {
			Class.new(Phlex::HTML) do
				def safe_append
				end
			end
		}.to raise_exception Phlex::NameError
	end
end
