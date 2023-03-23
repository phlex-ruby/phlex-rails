# frozen_string_literal: true

# @api experimental
module Phlex::Rails::Streaming
	private def stream(view)
		headers.delete("Content-Length")

		headers["X-Accel-Buffering"] = "no"
		headers["Cache-Control"] = "no-cache"
		headers["Content-Type"] = "text/html; charset=utf-8"
		headers["Last-Modified"] = Time.zone.now.ctime.to_s

		response.status = 200

		self.response_body = Enumerator.new do |buffer|
			view.call(buffer, view_context: view_context)
		rescue => e
			buffer << %('">)
			buffer << view_context.javascript_tag(nonce: true) { %(window.location = "/500.html").html_safe }

			raise e
		end
	end
end
