# frozen_string_literal: true

test do
	html = render template: "nested_table"

	assert_equivalent_html html, <<~HTML
		<div>
			<table border="2">
				<tbody>
					<tr>
						<td>
							HELLO WORLD
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	HTML
end
