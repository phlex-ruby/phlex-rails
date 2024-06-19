# frozen_string_literal: true

# @api private
module Phlex::Rails::Streaming
	include ActionController::Live

	private

	def stream(view, last_modified: Time.now.httpdate, filename: nil)
		__set_stream_headers__(last_modified: last_modified)

		case view
		when Phlex::HTML
			__stream_html__(view)
		when Phlex::CSV
			__stream_csv__(view, filename: filename)
		end
	end

	def __set_stream_headers__(last_modified:)
		headers.delete("Content-Length")

		headers["X-Accel-Buffering"] = "no"
		headers["Cache-Control"] = "no-transform"
		headers["Last-Modified"] = last_modified
	end

	def __stream_csv__(view, filename:)
		headers["Content-Type"] = "text/csv; charset=utf-8"
		headers["Content-Disposition"] = "attachment; filename=\"#{filename || view.filename}\""

		self.response_body = Enumerator.new do |buffer|
			view.call(buffer, view_context: view_context)
		end
	end

	def __stream_html__(view)
		headers["Content-Type"] = "text/html; charset=utf-8"

		# Ensure we have a session id.
		# See https://github.com/rails/rails/issues/51424
		if session.id.nil?
			session[:phlex_init_session] = 1
			session.delete(:phlex_init_session)
		end

		self.response_body = Enumerator.new do |buffer|
			view.call(buffer, view_context: view_context)
		rescue => e
			raise(e) if Rails.env.test?

			debug_middleware = ActionDispatch::DebugExceptions.new(
				proc { |_env| raise(e) },
				response_format: :html
			)

			_debug_status, _debug_headers, debug_body = debug_middleware.call(request.env)

			if Rails.env.development?
				js = <<~JAVASCRIPT
					document.documentElement.innerHTML = "#{view_context.j(debug_body.join)}";

					// Re-evaluate all script tags
					document.querySelectorAll("script").forEach((script) => {
						const newScript = document.createElement("script");
						newScript.text = script.text;
						newScript.nonce = "#{view_context.content_security_policy_nonce}";
						script.replaceWith(newScript);
					});

					// Re-evaluate all style tags
					document.querySelectorAll("style").forEach((style) => {
						const newStyle = document.createElement("style");
						newStyle.textContent = style.textContent;
						newStyle.nonce = "#{view_context.content_security_policy_nonce}";
						style.replaceWith(newStyle);
					});

					// Map onclick events to event listeners
					document.querySelectorAll("[onclick]").forEach((element) => {
						const action = element.getAttribute("onclick");
						const newScript = document.createElement("script")

						element.dataset.onclick = action;
						element.removeAttribute("onclick");

						newScript.text = `
							(function() {
								const action = () => { ${action} };
								document.addEventListener("click", (event) => {
									const element = event.target;

									if (element.dataset.onclick === "${action}") {
										action.bind(element)();
									};
								});
							})();
						`;

						newScript.nonce = "#{view_context.content_security_policy_nonce}";
						document.body.appendChild(newScript);
					});
				JAVASCRIPT
			else
				js = <<~JAVASCRIPT
					window.location = "/500.html";
				JAVASCRIPT
			end

			buffer << %(-->"'>)
			buffer << view_context.javascript_tag(js, nonce: true)
		end
	end
end
