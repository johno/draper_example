class UserDecorator < Draper::Decorator
  delegate_all

  def email_or_request_button
    public_email ? email : h.link_to('Request Email', '#', class: 'btn btn-default btn-xs').html_safe
  end

  def full_name
    if first_name.blank? && last_name.blank?
      'No name provided.'
    else
      "#{ first_name } #{ last_name }".strip
    end
  end

  def joined_at
    created_at.strftime("%B %Y")
  end
end
