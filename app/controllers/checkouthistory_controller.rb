class CheckouthistoryController < ApplicationController
  before_action :require_admin, only: [:show]
  before_action :require_user, only: [:index]
  def show
    #@book = Book.find(params[:id])
    if current_user && current_user.admin?
      isbn = params["id"]
      #Find the users who have taken this book..do SQL Join with Books Table
      #SELECT first_name,last_name,title,checkin,checkout FROM books
      # ,checkouthistories,users WHERE checkouthistories.isbn = 12
      # and books.isbn = 12 AND checkouthistories.email = users.email

      #
      @books = Book.joins('JOIN checkouthistories ON books.isbn = checkouthistories.isbn')
      .joins('JOIN users ON checkouthistories.email = users.email')
      .select('users.first_name, users.last_name, books.title,books.isbn, checkouthistories.checkin, checkouthistories.checkout')
      .where(isbn: isbn)
      #Book.select(Checkouthistory.select("checkin","checkout"),User.select("first_name","last_name"),"title")
      #.where(arel_table[:isbn].equal?(isbn) and arel_table[:])
      #@book = Book.where(isbn: isbn).
      #@book = Checkouthistory.find_by_isbn(isbn)
    else
      #Find book details by finding isbn from checkouthistory table,
      #join with books table
      @book = Checkouthistory.find_by_email(current_user.email)
    end
    if !@books
      flash.now[:warn] = "You have never borrowed a book!"
    end
  end

  def index
    search_email = ""
    user = ""
    key_count = 0
    if current_user && current_user.member?
      search_email = current_user.email
      user = search_email
    else

      params.each do |key,value|
        puts key
        puts value
        if key.eql? "checkouthistory"
          search_email = value
          search_email = search_email["email_id"]
          puts search_email
          puts "MUHAHAHA"
          key_count = key_count + 1
        end
      end

      user = User.find_by_email(search_email)
    end
    if user
      if search_email
        @books = Checkouthistory.joins('JOIN books ON books.isbn = checkouthistories.isbn')
        .joins('JOIN users ON checkouthistories.email = users.email')
        .select('books.title, books.isbn,checkouthistories.checkin, checkouthistories.checkout')
        .where(email: search_email)

        if @books.length == 0
           flash.now[:warn] = "This user has never borrowed a book"
        end
      end
    else
      if key_count!=0
        flash.now[:warn] = "This user does not exist!"
      end
    end
  end
end
