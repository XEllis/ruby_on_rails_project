class UserMailer < ApplicationMailer

  default from: 'railprogram2@gmail.com'

  def send_welcome_email(user)
    @user = user
    mail(:to => @user.email, :subject => "Welcome!")
  end
end
