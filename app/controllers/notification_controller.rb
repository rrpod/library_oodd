require 'json'

class NotificationController < ApplicationController
  #emailList ||= []
  def setEmail
    isbn = params[:id]
    email = params[:email]
    flag = 0

    puts "REached here!!!"
    @current_email_list = Notification.find_by_isbn(isbn)
    if @current_email_list == nil
      @current_email_list = []
      @current_email_list.push(email)
      flag = 1
    else
      puts "cxcvcxvcvvc"
      puts @current_email_list
      @current_email_list = JSON.parse(@current_email_list["emailList"])
      @current_email_list.push(email)
      puts @current_email_list
    end

    notDetails = Hash.new
    notDetails["isbn"] = isbn
    notDetails["emailList"] = @current_email_list.to_json

    @not_update = ""
    if flag == 1
      @not_update = Notification.new(notDetails)
    else
      @record = Notification.find_by_isbn(isbn)
      @record.destroy
      @not_update = Notification.new(notDetails)
      #@not_update = Notification.update(isbn: isbn, emailList: notDetails["emailList"])
      #Notification.update
    end

    if @not_update.save
      flash[:notice] = "You will be notified once this book is available!"
    else
      flash[:warn] = "An internal error occurred"
    end
    redirect_to root_path
  end
end
