module ApplicationHelper

	def success_message(message)
		p "xx"
		p message
		return "" if message.nil?
		html = <<-MESSAGE
		<div class="alert alert-success" role="alert">
		#{message}
		</div>
		MESSAGE
		html.html_safe
	end
end
