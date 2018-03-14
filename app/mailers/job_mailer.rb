class JobMailer < ApplicationMailer

  default from: 'railprogram2@gmail.com'

  def send_close_email(user)
    @user = user
    mail(:to => @user.email, :subject => "The job you applied is closed!")
  end

  def send_update_email(user)
    @user = user
    mail(:to => @user.email, :subject => "The job application status has been updated!")
  end

end