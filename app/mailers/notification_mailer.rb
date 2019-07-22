class NotificationMailer < ApplicationMailer
  default from: "no-reply@nomsterapp.com"


  def comment_added(comment)
    @place = comment.place
    @place_owner = @place.user
    delivery_options = {user_name: ENV["GMAIL_ADDRESS"], password: ENV["GMAIL_PASSWORD"] }
     mail(to: @place_owner.email, subject: "A comment has been added to #{@place.name}")
  end
end
