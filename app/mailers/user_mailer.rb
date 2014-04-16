class UserMailer < ActionMailer::Base
  default from: "admin@sharebnb.com"

  def signup_confirmation(user)
    @user = user
    mail to: @user.email, subject: "Welcome to Sharebnb!"
  end
end
