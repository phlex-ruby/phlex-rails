# frozen_string_literal: true

# @api private
module Phlex::Rails::Streaming
	private

	def stream(view)
		headers.delete("Content-Length")

		headers["X-Accel-Buffering"] = "no"
		headers["Cache-Control"] = "no-cache"
		headers["Content-Type"] = "text/html; charset=utf-8"
		headers["Last-Modified"] = Time.now.httpdate

		response.status = 200

		self.response_body = Enumerator.new do |buffer|
			view.call(buffer, view_context: view_context)
		rescue => e
			raise (e) if Rails.env.test?

			debug_middleware = ActionDispatch::DebugExceptions.new(
				proc { |env| raise(e) },
				response_format: :html
			)

			_debug_status, _debug_headers, debug_body = debug_middleware.call(request.env)

			if Rails.env.development?
				js = <<~JAVASCRIPT
					document.documentElement.innerHTML = "#{view_context.j(debug_body.join)}";

					// Re-evaluate all script tags
					document.querySelectorAll("script").forEach((script) => {
						newScript = document.createElement("script");
						newScript.text = script.text;
						script.replaceWith(newScript);
					});
				JAVASCRIPT
			else
				js = <<~JAVASCRIPT
					window.location = "/500.html";
				JAVASCRIPT
			end

			buffer << %(-->"'>)
			buffer << view_context.javascript_tag(js, nonce: true)

			p e
		end
	end
end
