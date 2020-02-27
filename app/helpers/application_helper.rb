module ApplicationHelper
  def flash_message(message, type = "success")
    return "" if message.nil?
    html = <<-MESSAGE
		<div class="alert alert-#{type.eql?("success") ? "success" : "danger"}" role="alert">
		#{message}
		</div>
		MESSAGE
    html.html_safe
  end
end
