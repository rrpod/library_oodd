class ApplicationMailer < ActionMailer::Base
  default from: "csc517oodd@gmail.com"
  #layout 'mailer'
  def notify_user(user)
    puts "Going to send email!! to"
    puts user
    mail(to: user, subject: "Welcome!")
    return
  end
end
