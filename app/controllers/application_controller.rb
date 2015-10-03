require 'time'
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_user
    redirect_to '/login' unless current_user
  end

  def require_member
    put "ASDASD"
    if (!current_user || !current_user.member?)
      flash[:warn] = "You need to be logged in to perform that action!"
    end
    redirect_to '/login' unless current_user && current_user.member?
  end

  def require_admin
    puts "IAM THE CASYE"
    if (current_user && !current_user.admin? || !current_user)
      flash[:warn] = "You need Admin Rights to Perform that action!"
    end
    redirect_to '/' unless current_user && current_user.admin?
  end

  def history_book(isbn)
    current_time = Time.now.utc.iso8601
    puts "history book"
    Checkouthistory.where(isbn: isbn, checkin: nil).update_all(checkin: current_time)
    puts "done updating!"
  end

  def notify_people(isbn)
    puts "Notify pople!"
    @current_email_list = Notification.find_by_isbn(isbn)
    puts "did query"
    if @current_email_list != nil
      puts "found record!"
      @current_email_list = JSON.parse(@current_email_list["emailList"])
      puts "Done something"
      puts @current_email_list
      @current_book = Book.find_by_isbn(isbn)
      book_name = @current_book["title"]
      puts "Book name is: "
      puts book_name
      @current_email_list.each do |item|
        puts item
        ApplicationMailer.notify_user(item,book_name).deliver_now
        puts "Done sending.."
      end
      Notification.find_by_isbn(isbn).destroy
      puts "This is over"
    end
  end
end
