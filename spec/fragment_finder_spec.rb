# frozen_string_literal: true

describe Phlex::Rails::FragmentFinder do
	include	Phlex::Rails::FragmentFinder
	it "find nothing" do
		expect(
			extract(<<~HTML, ["d"])
				<div id="a">A</div>
				<div id="b">B</div>
				<div id="c">c</div>
			HTML
		).to be == ""
	end

	it "find one" do
		expect(
			extract(<<~HTML, ["b"])
				<div id="a">A</div>
				<div id="b">B</div>
				<div id="c">c</div>
			HTML
		).to be == %(<div id="b">B</div>)
	end

	it "find two" do
		expect(
			extract(<<~HTML, ["b", "c"])
				<div id="a">A</div>
				<div id="b">B</div>
				<div id="c">C</div>
				<div id="d">D</div>
			HTML
		).to be == %(<div id="b">B</div><div id="c">C</div>)
	end

	it "doesn't duplicate" do
		expect(
			extract(<<~HTML, ["b", "c"])
				<div id="a">A</div>
				<div id="b">B
					<div id="c">C</div>
				</div>
				<div id="d">D</div>
			HTML
		).to be == %(<div id="b">B\n\t<div id="c">C</div>\n</div>)
	end
end
