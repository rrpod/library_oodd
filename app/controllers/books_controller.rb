class BooksController < ApplicationController
  before_action :require_admin, only: [:new, :create, :edit, :update,:destroy]

  def new
    @book = Book.new
  end

  def index
    @books = Book.all
  end

  def index_search
    if params[:search]
      @book = Book.search(params[:search]).sort
    else
      @book = Book.all.order('created_at DESC')
    end
    if !@book || @book.length == 0
      flash[:warn] = "Could not find anything!"
    end
  end

  def create
    book = Book.find_by_isbn(params[:book][:isbn])
    if book
      flash[:warn] = "A book is already present with this ISBN"
      redirect_to newbook_url
      return
    end
    params[:book][:status] = "available"
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book Successfully added"
      redirect_to books_url
    else
      flash[:warn] = "Server faced an internal error. Could not save book"
      redirect_to newbook_url
    end
  end

  def edit
    @book = Book.find_by_isbn(params["id"])
  end

  def update
    book_isbn = params[:book][:isbn]
    puts "ROHIGIGOGIGOGI" + book_isbn
    @book = Book.find_by_isbn(book_isbn)

    if @book
      puts "Reached here"
      if @book.update(book_params)
        history_book(book_isbn)
        flash[:notice] = "Book status updated successfully"
      else
        flash[:warn] = "Could not update Book status"
      end
      redirect_to books_url
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])

    if @book.status == "available"
      if @book
        if @book.destroy
          flash[:notice] = "Book was deleted successfully"
        else
          flash[:warn] = "Could not delete Book"
        end
      else
        flash[:warn] = "Did not find book to delete"
      end
    else
      flash[:warn] = "Book has not been returned!"
    end
    redirect_to books_url
  end


  private

  def book_params
    params.require(:book).permit(:isbn, :title, :description, :author, :status)
  end
end
