module ApplicationHelper
  def flash_message(message)
    html = ""
    flash.each do |type, msg|
      html = <<-MESSAGE
            		<div class="alert alert-#{type.eql?("notice") ? "success" : "danger"}" role="alert">
            		#{msg}
            		</div>
            		MESSAGE
    end

    # return "" if message.nil?

    html.html_safe
  end
end
