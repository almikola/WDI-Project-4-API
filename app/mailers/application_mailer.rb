class ApplicationMailer < ActionMailer::Base
  default from: 'almikola@gmail.com'

  def invitation_email(user)
    @user = user
    @url = 'http://localhost:7000/login'
    mail(to: @user.email, subject: 'You\'ve been invited!')
  end
# layout 'mailer'
end
