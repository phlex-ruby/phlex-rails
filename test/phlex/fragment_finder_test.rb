# frozen_string_literal: true

require "test_helper"

class FragmentFinderTest < ActiveSupport::TestCase
	include	Phlex::Rails::FragmentFinder

	test "find one" do
		result = extract(<<~HTML, ["b"])
			<div id="a">A</div>
			<div id="b">B</div>
			<div id="c">c</div>
		HTML

		assert_equal %(<div id="b">B</div>), result
	end

	test "find two" do
		result = extract(<<~HTML, ["b", "c"])
			<div id="a">A</div>
			<div id="b">B</div>
			<div id="c">C</div>
			<div id="d">D</div>
		HTML

		assert_equal %(<div id="b">B</div><div id="c">C</div>), result
	end

	test "doesn't duplicate" do
		result = extract(<<~HTML, ["b", "c"])
			<div id="a">A</div>
			<div id="b">B
				<div id="c">C</div>
			</div>
			<div id="d">D</div>
		HTML

		assert_equal %(<div id="b">B\n\t<div id="c">C</div>\n</div>), result
	end
end
