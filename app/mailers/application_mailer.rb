class ApplicationMailer < ActionMailer::Base
  default from: "csc517oodd@gmail.com"
  #layout 'mailer'
  def notify_user(user)
    mail(to: user, subject: "Welcome!")
  end
end
