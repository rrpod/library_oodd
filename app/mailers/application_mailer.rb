class ApplicationMailer < ActionMailer::Base
  default from: "csc517oodd@gmail.com"
  #layout 'mailer'
  def notify_user(user, book_name)
    puts "Going to send email!! to"
    puts user
    @book = book_name
    mail(to: user, subject: "The book You were looking for is available!")
    puts "Done sending mail!"
    return
  end
end
