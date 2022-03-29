module SessionsHelper

  def flash_message
    flash.map do |key, msg|
      content_tag :p, msg, class: 'flash #{key}'
    end.join.html_safe
  end

end
