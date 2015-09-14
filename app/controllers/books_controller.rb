class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
    @books = Book.all
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
    @book = Book.find(params[:id])
  end

  def update
    if @book.update(book_params)
      flash[:notice] = "Book status updated successfully"
    else
      flash[:warn] = "Could not update Book status"
    end
  end

  def destroy

  end
  private

  def book_params
    params.require(:book).permit(:isbn, :title, :description, :author, :status)
  end
end
